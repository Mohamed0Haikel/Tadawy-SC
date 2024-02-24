import 'package:flutter/material.dart';

class ExerciseData extends StatelessWidget {
  ExerciseData({
    super.key,
    required this.exerciseName,
    required this.imagePath,
    required this.exerciseInstructionsName,
    required this.exerciseInstructionsDescription,
    this.imagePathFocusArea,
  });
  final String exerciseName;
  final String imagePath;
  final String exerciseInstructionsName;
  final String exerciseInstructionsDescription;
  final String? imagePathFocusArea;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  imagePath,
                  height: 300,
                  width: 300,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              exerciseInstructionsName,
              style: const TextStyle(
                color: Colors.red,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 200,
              child: Text(
                exerciseInstructionsDescription,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),
            ),
            Text(
              'Focus area: $exerciseName',
              style: const TextStyle(
                color: Colors.red,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  imagePathFocusArea ?? imagePath,
                  height: 300,
                  width: 300,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class ExerciseData extends StatelessWidget {
//   ExerciseData(
//       {super.key,
//       required this.exerciseName,
//       required this.imagePath,
//       required this.exerciseInstructionsName,
//       required this.exerciseInstructionsDescription});
//   final String exerciseName;
//   final String imagePath;
//   final String exerciseInstructionsName;
//   final String exerciseInstructionsDescription;

//   Widget _buildRichText(String text) {
//     List<InlineSpan> children = [];

//     // Split the text by lines
//     List<String> lines = text.split('\n');

//     // Add each line as a TextSpan with a newline
//     for (String line in lines) {
//       children.add(TextSpan(
//           text: line + '\n',
//           style: TextStyle(color: Colors.grey, fontSize: 16)));
//     }

//     return RichText(text: TextSpan(children: children));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(15.0),
//       child: Column(
//         children: [
//           ClipRRect(
//             borderRadius: BorderRadius.circular(20),
//             child: Image.asset(
//               imagePath,
//               height: 300,
//               width: 300,
//             ),
//           ),
//           SizedBox(height: 20),
//           Text(
//             exerciseName,
//             style: const TextStyle(
//               color: Colors.grey,
//               fontSize: 16,
//             ),
//           ),
//           SizedBox(height: 20),
//           Text(
//             exerciseInstructionsName,
//             style: const TextStyle(
//               color: Colors.grey,
//               fontSize: 16,
//             ),
//           ),
//           SizedBox(height: 20),
//           _buildRichText(exerciseInstructionsDescription),
//         ],
//       ),
//     );
//   }
// }
