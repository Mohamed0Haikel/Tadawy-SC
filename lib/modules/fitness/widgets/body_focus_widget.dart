import 'dart:math';

import 'package:flutter/material.dart';

import '../../../data/fitness_exercises_data.dart';
import '../../../models/fitness_exercises.dart';
import '../body_focus_ex_screen.dart';

class BodyFocusWidget extends StatelessWidget {
  //final FitnessExercisesModel fitnessExercisesName;

  // List exercisesName = [
  //   armExercises,
  //   legExercises,
  //   chestExercises,
  //   packExercises,
  //   backExercises,
  // ];

  BodyFocusWidget({
    super.key,
    required this.title,
    required this.imagePathW,
    //required this.fitnessExercisesName,
  });
  final String title;
  final String imagePathW;
  //final List exercisesName;
  //final Function() route;

  @override
  Widget build(BuildContext context) {
    List<FitnessExercisesModel> exercisesType = [];

    if (title == 'Arm') {
      exercisesType = armExercises;
    } else if (title == 'Leg') {
      exercisesType = legExercises;
    } else if (title == 'Chest') {
      exercisesType = chestExercises;
    } else if (title == 'Six pack') {
      exercisesType = packExercises;
    } else if (title == 'Back') {
      exercisesType = backExercises;
    }

    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BodyFocusExScreen(
              //exercises: fitnessExercisesName.countExercise
              exercises: exercisesType,
              //exercises: exercisesName[],
            ),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(15),
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(
          color: Color(0xfff04444),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Image.asset(
                  imagePathW,
                  // alignment: Alignment.topRight,
                  height: 100,
                  width: 100,
                  //color: Color(0xfff04444),
                  //colorBlendMode: BlendMode.darken,
                ),
              ),
              Text(
                title,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ]),
      ),
    );
  }
}
