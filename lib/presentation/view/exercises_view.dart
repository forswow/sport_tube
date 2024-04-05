import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sport_tube/presentation/view/exercise_form_view.dart';
import 'package:sport_tube/presentation/view_model/exercise_view_model.dart';
import 'package:sport_tube/presentation/widgets/exercise_card.dart';

class ExercisesView extends ConsumerWidget {
  const ExercisesView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final exercises = ref.watch(exerciseViewModelProvider);
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: const FlexibleSpaceBar(
          title: Text('SportTube'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            itemCount: exercises.valueOrNull?.length ?? 0,
            shrinkWrap: true,
            itemBuilder: (ctx, i) {
              final exercise = exercises.value?[i];
              return ExerciseCard(exercise: exercise);
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (ctx) => const ExerciseFormView()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
