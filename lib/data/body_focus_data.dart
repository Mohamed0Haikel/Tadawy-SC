import 'package:tdaway/data/fitness_exercises_data.dart';

import '../models/body_focus_model.dart';
import '../modules/fitness/body_focus_ex_screen.dart';

List<BodyFocusModel> bodyFocusData = [
  BodyFocusModel(
    exercisesNumber: 5,
    title: 'Back',
    imagePathW: 'assets/fitness/back.jpeg',
    // route: () {
    //   BodyFocusExScreen(
    //     exercises: packExercises,
    //   );
    // },
  ),
  BodyFocusModel(
    title: 'Arm',
    imagePathW: 'assets/fitness/arm.jpeg',
    exercisesNumber: 1,
    // route: () {
    //   BodyFocusExScreen(
    //     exercises: armExercises,
    //   );
    // },
  ),
  BodyFocusModel(
    title: 'Chest',
    imagePathW: 'assets/fitness/Chest.jpg',
    exercisesNumber: 2,
    // route: () {
    //   BodyFocusExScreen(
    //     exercises: chestExercises,
    //   );
    // },
  ),
  BodyFocusModel(
    exercisesNumber: 3,
    title: 'Leg',
    imagePathW: 'assets/fitness/leg.jpeg',
    // route: () {
    //   BodyFocusExScreen(
    //     exercises: legExercises,
    //   );
    // },
  ),
  BodyFocusModel(
    exercisesNumber: 4,
    title: 'Six pack',
    imagePathW: 'assets/fitness/six_pack.jpeg',
    // route: () {
    //   BodyFocusExScreen(
    //     exercises: packExercises,
    //   );
    // },
  ),
];
