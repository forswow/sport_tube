import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sport_tube/data/source/database/database_impl.dart';
import 'package:sport_tube/presentation/view_model/mode/exercise_mode_model.dart';

class ExerciseFormView extends ConsumerStatefulWidget {
  const ExerciseFormView({super.key, required this.exercise});
  final Exercise exercise;
  @override
  ConsumerState<ExerciseFormView> createState() => _ExerciseFormViewState();
}

class _ExerciseFormViewState extends ConsumerState<ExerciseFormView> {
  final _formKey = GlobalKey<FormState>();
  late ExerciseModeModel model;
  Timer? _debounce;
  @override
  void initState() {
    model =
        ref.read(exerciseModeModelProvider(widget.exercise.toJson()).notifier);
    super.initState();
  }

  @override
  void didUpdateWidget(covariant ExerciseFormView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.exercise != widget.exercise) {
      _formKey.currentState?.reset();
      model = ref
          .read(exerciseModeModelProvider(widget.exercise.toJson()).notifier);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('add'),
        ),
        body: SingleChildScrollView(
            child: Form(
          child: Column(
            children: [TextFormField(), TextFormField(), TextFormField()],
          ),
        )));
  }
}
