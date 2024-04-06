import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sport_tube/domain/extensions/exercise_type_extension.dart';
import 'package:sport_tube/domain/extensions/mode_extension.dart';
import 'package:sport_tube/domain/model/exercise_model.dart';
import 'package:sport_tube/presentation/utils/debouncer.dart';
import 'package:sport_tube/presentation/view_model/mode/exercise_mode_model.dart';
import 'package:sport_tube/presentation/widgets/confirm_dialog.dart';

import '../../domain/extensions/difficulty_level_extension.dart';
import '../widgets/autocomplete_field.dart';
import '../widgets/input_field.dart';

class ExerciseFormView extends ConsumerStatefulWidget {
  const ExerciseFormView({
    super.key,
    this.exercise,
    this.id,
  });
  final ExerciseModel? exercise;
  final int? id;
  @override
  ConsumerState<ExerciseFormView> createState() => _ExerciseFormViewState();
}

class _ExerciseFormViewState extends ConsumerState<ExerciseFormView> {
  final _formKey = GlobalKey<FormState>();
  late ExerciseModeModel model;

  @override
  void initState() {
    model = ref.read(exerciseModeModelProvider(widget.exercise).notifier);
    super.initState();
  }

  @override
  void didUpdateWidget(covariant ExerciseFormView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.exercise != widget.exercise) {
      _formKey.currentState?.reset();
      model = ref.read(exerciseModeModelProvider(widget.exercise).notifier);
    }
  }

  final debounce = Debouncer(milliseconds: 500);

  @override
  Widget build(BuildContext context) {
    final (exercise, canPop) =
        ref.watch(exerciseModeModelProvider(widget.exercise));
    final title = widget.exercise?.name ?? 'Добавить упражнение';
    return GestureDetector(
      key: ValueKey(widget.id),
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
          appBar: AppBar(
            title: Text(title),
            actions: [
              if (canPop) ...[
                IconButton(
                    onPressed: () async {
                      if (_formKey.currentState?.validate() ?? false) {
                        await model
                            .createOrUpdate()
                            .then((value) => context.pop());
                      }
                    },
                    icon: const Icon(Icons.save_outlined))
              ]
            ],
          ),
          body: SingleChildScrollView(
              child: Form(
            key: _formKey,
            canPop: !canPop,
            onPopInvoked: (didPop) async {
              if (didPop) {
                return;
              }
              await ConfirmDialog.confirmDialog(context).then((confirm) {
                if (confirm ?? false) {
                  Navigator.pop(context);
                }
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                children: [
                  InputField<String>(
                    label: 'Название упражнения',
                    initialValue: exercise.name,
                    onChanged: model.setTitle,
                    keyboardType: TextInputType.text,
                  ),
                  InputField<String>.max(
                    label: 'Описание',
                    initialValue: exercise.description,
                    onChanged: model.setDescription,
                    keyboardType: TextInputType.text,
                  ),
                  AutocompleteField(
                    options: ExerciseTypeExtension.getNames(),
                    label: 'Тип упражнения',
                    error: '',
                    initialValue: ExerciseTypeExtension.first(exercise.type),
                    onSelected: model.setType,
                  ),
                  AutocompleteField(
                    options: DifficultyLevelExtension.getNames(),
                    label: 'Уровень сложности',
                    onSelected: model.setDifficultyLevel,
                    initialValue: DifficultyLevelExtension.first(
                        exercise.difficultyLevel),
                    error: '',
                  ),
                  InputField<double>.decimel(
                    label: 'Продолжительность выполнения',
                    keyboardType:
                        const TextInputType.numberWithOptions(decimal: true),
                    initialValue: exercise.duration,
                    onChanged: model.setDuration,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Рекомендуемое количество:'),
                      Row(
                        children: [
                          //Рекомендуемое количество повторений
                          Expanded(
                            child: Center(
                              child: InputField<int>.numeric(
                                label: 'повторений',
                                initialValue: exercise.repetitions,
                                keyboardType:
                                    const TextInputType.numberWithOptions(
                                        signed: true),
                                onChanged: model.setRepetitions,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Center(
                              child: InputField<int>.numeric(
                                label: 'подходов',
                                initialValue: exercise.sets,
                                keyboardType:
                                    const TextInputType.numberWithOptions(
                                        signed: true),
                                onChanged: model.setSets,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ))),
    );
  }
}
