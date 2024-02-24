import 'package:flutter/material.dart';

import '../../models/fitness_exercises.dart';

class BodyFocusExScreen extends StatelessWidget {
  BodyFocusExScreen({super.key, required this.exercises});
  final List<FitnessExercisesModel> exercises;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        body: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 0.80,
          children: List.generate(exercises.length, (index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(6),
                alignment: Alignment.bottomLeft,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(exercises[index].imageExercise),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Text(
                  '${exercises[index].countExercise} x ',
                  style: TextStyle(
                    color: Color(0xfff04444),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          }),
        ));
  }
}


// ListView.builder(
//         itemCount: 6,
//         itemBuilder: (context, index) {
//           return Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//               height: 200,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(20),
//                 image: DecorationImage(
//                   image:
//                       AssetImage('assets/fitness/arm/Concentration-Curl.gif'),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
