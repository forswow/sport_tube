import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sport_tube/domain/enum/difficulty_level.dart';
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
  const ExerciseFormView({super.key, this.exercise});
  final ExerciseModel? exercise;
  @override
  ConsumerState<ExerciseFormView> createState() => _ExerciseFormViewState();
}

class _ExerciseFormViewState extends ConsumerState<ExerciseFormView> {
  final _formKey = GlobalKey<FormState>();
  late ExerciseModeModel model;
  Timer? _debounce;
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
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
          appBar: AppBar(
            title: Text(title),
            actions: [
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.save_outlined))
            ],
          ),
          body: SingleChildScrollView(
              child: Form(
            onChanged: () {
              debounce.run(() {});
            },
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
                    onSelected: model.setType,
                  ),
                  AutocompleteField(
                    options: DifficultyLevelExtension.getNames(),
                    label: 'Уровень сложности',
                    onSelected: model.setDifficultyLevel,
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
