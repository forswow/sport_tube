import 'package:go_router/go_router.dart';
import 'package:sport_tube/presentation/view/exercise_details.dart';
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
            builder: (context, state) =>
                ExerciseDetails(id: state.pathParameters['id']!),
          ),
        ],
      ),
    ],
  );
}
