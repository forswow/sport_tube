import 'package:flutter/material.dart';

class ExercisesView extends StatelessWidget {
  const ExercisesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: FlexibleSpaceBar(
          title: Text('SportTube'),
        ),
      ),
      body: SingleChildScrollView(
        child: GridView.builder(shrinkWrap: true,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (ctx, i) {
              return Card(
                child: GridTile(child: Text('')),
              );
            }),
      ),
    );
  }
}
