import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sport_tube/data/source/database/database_impl.dart';
import 'package:sport_tube/presentation/view/exercise_form_view.dart';
import 'package:sport_tube/presentation/view_model/exercise_view_model.dart';

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
              itemCount: 5,
              shrinkWrap: true,
              itemBuilder: (ctx, i) {
                return Card(child: Text('$i'));
              }),
        ),
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
