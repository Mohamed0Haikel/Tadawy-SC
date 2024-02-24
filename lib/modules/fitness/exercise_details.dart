import 'package:flutter/material.dart';
import 'package:tdaway/modules/fitness/fitness_home.dart';
import '../widgets/exercise_data.dart';

class ExerciseDetailScreen extends StatelessWidget {
  Map<String, String> exerciseDescriptions = {
    'Bodyweight-squat': '''
Stand with your feet shoulder-width apart.
Lower your body by bending your knees and pushing your hips back as if you are sitting down.
Keep your back straight and chest up.
Lower down until your thighs are parallel to the ground or as far as comfortable.
Push through your heels to return to the starting position.
''',
    'Chest-dip-movement': '''
Use parallel bars or sturdy dip bars.
Grip the bars with your palms facing each other.
Lower your body by bending your elbows until your upper arms are parallel to the ground.
Keep your body upright and avoid leaning forward too much.
Push through your palms to return to the starting position.
''',
    'Chin-ups': '''
Hang from a pull-up bar with your palms facing towards you.
Pull your body up towards the bar by bending your elbows.
Keep your chest up and try to touch your chin to the bar.
Lower your body back down with control.
''',
    'Crunch': '''
Lie on your back with your knees bent and feet flat on the ground.
Place your hands behind your head or across your chest.
Lift your shoulders towards the ceiling using your abdominal muscles.
Avoid pulling on your neck and focus on contracting your abs.
Lower your upper body back down with control.
''',
    'Inverted-row': '''
Set up a bar at waist height.
Lie under the bar, grab it with an overhand grip, and keep your body straight.
Pull your chest towards the bar by squeezing your shoulder blades together.
Lower your body back down with control.
''',
    'Pull-up': '''
Hang from a pull-up bar with your palms facing away.
Pull your body up towards the bar by bending your elbows.
Keep your chest up and engage your back muscles.
Lower your body back down with control.
''',
    'Push-up': '''
Start in a plank position with your hands slightly wider than shoulder-width apart.
Lower your body towards the ground by bending your elbows.
Keep your body in a straight line and lower until your chest is close to the ground.
Push through your palms to return to the starting position.
''',
    'Tricep-dips': '''
Use parallel bars or a sturdy surface behind you.
Grip the bars with your palms facing downward.
Lower your body by bending your elbows, keeping them close to your body.
Push through your palms to return to the starting position, focusing on your triceps.
''',
  };

  final String exerciseName;

  ExerciseDetailScreen({required this.exerciseName});

  @override
  Widget build(BuildContext context) {
    // print('Exercise Name: $exerciseName');
    // print('Exercise Descriptions: $exerciseDescriptions');
    String imagePath = 'assets/fitness/${exerciseName.toLowerCase()}.gif';
    // String imagePathFocusArea =
    //     'assets/fitness/${exerciseName.toLowerCase()}.png';
    String imagePathFocusArea = FitnessHome().imagePathFocusArea[
            FitnessHome().exerciseNames.indexOf(exerciseName)] ??
        '';
    String exerciseDescription =
        exerciseDescriptions[exerciseName.trim()] ?? '';

    //print('Exercise Description: $exerciseDescription');

    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text(exerciseName),
        centerTitle: true,
      ),
      body: ExerciseData(
        exerciseName: exerciseName,
        imagePath: imagePath,
        exerciseInstructionsName: 'Instructions for $exerciseName',
        exerciseInstructionsDescription: exerciseDescription,
        imagePathFocusArea: imagePathFocusArea,
      ),
    );
  }
}



// class ExerciseDetailScreen extends StatelessWidget {
//   Map<String, String> exerciseDescriptions = {
//   'Squat': '''
//   - Stand with your feet shoulder-width apart.
//   - Lower your body by bending your knees and pushing your hips back as if you are sitting down.
//   - Keep your back straight and chest up.
//   - Lower down until your thighs are parallel to the ground or as far as comfortable.
//   - Push through your heels to return to the starting position.
//   ''',
//   'Chest Dip Movement': '''
//   - Use parallel bars or sturdy dip bars.
//   - Grip the bars with your palms facing each other.
//   - Lower your body by bending your elbows until your upper arms are parallel to the ground.
//   - Keep your body upright and avoid leaning forward too much.
//   - Push through your palms to return to the starting position.
//   ''',
//   'Chin-ups': '''
//   - Hang from a pull-up bar with your palms facing towards you.
//   - Pull your body up towards the bar by bending your elbows.
//   - Keep your chest up and try to touch your chin to the bar.
//   - Lower your body back down with control.
//   ''',
//   'Crunch': '''
//   - Lie on your back with your knees bent and feet flat on the ground.
//   - Place your hands behind your head or across your chest.
//   - Lift your shoulders towards the ceiling using your abdominal muscles.
//   - Avoid pulling on your neck and focus on contracting your abs.
//   - Lower your upper body back down with control.
//   ''',
//   'Inverted Row': '''
//   - Set up a bar at waist height.
//   - Lie under the bar, grab it with an overhand grip, and keep your body straight.
//   - Pull your chest towards the bar by squeezing your shoulder blades together.
//   - Lower your body back down with control.
//   ''',
//   'Pull-up': '''
//   - Hang from a pull-up bar with your palms facing away.
//   - Pull your body up towards the bar by bending your elbows.
//   - Keep your chest up and engage your back muscles.
//   - Lower your body back down with control.
//   ''',
//   'Push-up': '''
//   - Start in a plank position with your hands slightly wider than shoulder-width apart.
//   - Lower your body towards the ground by bending your elbows.
//   - Keep your body in a straight line and lower until your chest is close to the ground.
//   - Push through your palms to return to the starting position.
//   ''',
//   'Tricep Dips': '''
//   - Use parallel bars or a sturdy surface behind you.
//   - Grip the bars with your palms facing downward.
//   - Lower your body by bending your elbows, keeping them close to your body.
//   - Push through your palms to return to the starting position, focusing on your triceps.
//   '''
// };

//   final String exerciseName;

//   ExerciseDetailScreen({required this.exerciseName});

//   @override
//   Widget build(BuildContext context) {
//     String imagePath = 'assets/fitness/${exerciseName.toLowerCase()}.gif';

//     return Scaffold(
//       backgroundColor: Colors.grey[900],
//       appBar: AppBar(
//         backgroundColor: Colors.grey[900],
//         title: Text('Exercise Detail'),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: ExerciseData(
//           exerciseName: exerciseName,
//           imagePath: imagePath,
//           exerciseInstructionsName: 'Instructions for $exerciseName',
//           exerciseInstructionsDescription: '',
//         ),
//       ),
//     );
//   }
// }
