import 'package:go_router/go_router.dart';
import 'package:sport_tube/data/source/database/database_impl.dart';
import 'package:sport_tube/domain/model/exercise_model.dart';
import 'package:sport_tube/presentation/view/exercise_details.dart';
import 'package:sport_tube/presentation/view/exercise_form_view.dart';
import 'package:sport_tube/presentation/view/exercises_view.dart';

class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const ExercisesView(),
        routes: [
          GoRoute(
            path: 'exercise/:id',
            builder: (context, state) {
              final exercise = state.extra as Exercise?;
              final id = state.pathParameters['id'];
              return ExerciseFormView(
                  exercise: ExerciseModel.fromExercise(exercise),
                  id: int.tryParse(id ?? ''));
            },
          ),
        ],
      ),
    ],
  );
}
