import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sport_tube/data/source/database/database_impl.dart';
import 'package:sport_tube/presentation/widgets/exercise_chip.dart';

class ExerciseCard extends StatelessWidget {
  const ExerciseCard({
    super.key,
    required this.exercise,
  });

  final Exercise? exercise;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.go('/exercise/${exercise?.id}', extra: exercise),
      borderRadius: BorderRadius.circular(16),
      child: Card(
          child: ConstrainedBox(
        constraints: const BoxConstraints(minHeight: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(exercise?.name ?? ''),
                      Text(exercise?.description ?? ''),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ExerciseChip(label: exercise?.type ?? ''),
                    ExerciseChip(
                      label: exercise?.difficultyLevel ?? '',
                      backgroundColor: Colors.deepOrange,
                    ),
                  ],
                )
              ],
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.timelapse_outlined,
                        size: 24.0,
                        color: Colors.grey.shade600,
                      ),
                      const SizedBox(height: 4.0),
                      Text(
                        exercise?.duration?.toString() ?? '',
                        style:
                            const TextStyle(fontSize: 16.0, color: Colors.grey),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.repeat_outlined,
                        size: 24.0,
                        color: Colors.grey.shade600,
                      ),
                      const SizedBox(height: 4.0),
                      Text(
                        exercise?.repetitions?.toString() ?? '',
                        style:
                            const TextStyle(fontSize: 16.0, color: Colors.grey),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.fitness_center_outlined,
                        size: 24.0,
                        color: Colors.grey.shade600,
                      ),
                      const SizedBox(width: 8.0),
                      Text(
                        exercise?.sets?.toString() ?? '',
                        style:
                            const TextStyle(fontSize: 16.0, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}

