import 'package:flutter/material.dart';
import 'package:tdaway/modules/fitness/exercise_details.dart';

class FitnessHome extends StatelessWidget {
  FitnessHome({Key? key});

  final List<String> imagePaths = [
    'assets/fitness/bodyweight-squat.gif',
    'assets/fitness/chest-dip-movement.gif',
    'assets/fitness/chin-ups.gif',
    'assets/fitness/crunch.gif',
    'assets/fitness/inverted-row.gif',
    'assets/fitness/pull-up.gif',
    'assets/fitness/push-up.gif',
    'assets/fitness/tricep-dips.gif'
  ];

  final List<String> imagePathFocusArea = [
    'assets/fitness/chin-ups.png',
    'assets/fitness/pull-up.png',
    'assets/fitness/push-up.png',
    'assets/fitness/push-up.png',
    'assets/fitness/squat.png',
    'assets/fitness/Tricep-dips.png',
    'assets/fitness/crunch.png',
    'assets/fitness/chest-dip-movemen.png',
  ];

  final List<String> exerciseNames = [
    'Bodyweight-squat',
    'Chest-dip-movement',
    'Chin-ups',
    'Crunch',
    'Inverted-row',
    'Pull-up',
    'Push-up',
    'Tricep-dips'

  ];

  void navigateToExerciseDetail(BuildContext context, String exerciseName) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ExerciseDetailScreen(exerciseName: exerciseName),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome Back!',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'John Doe Darwish',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 65,
                  width: 65,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/doctor1.jpg'),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Programs',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'See more',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                )
              ],
            ),
            //   Expanded(
            //     child: ListView.builder(
            //       itemCount: imagePaths.length,
            //       itemBuilder: (context, index) {
            //         return Container(
            //           margin: EdgeInsets.all(10),
            //           height: 200,
            //           width: 200,
            //           decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(20),
            //             color: Colors.green,
            //           ),
            //           child: Column(
            //             mainAxisAlignment: MainAxisAlignment.center,
            //             children: [
            //               Expanded(
            //                 child: FittedBox(
            //                   fit: BoxFit.cover,
            //                   child: Image.asset(
            //                     imagePaths[index],
            //                     // height: 150,
            //                     // width: 150,
            //                   ),
            //                 ),
            //               ),
            //               Text(
            //                 exerciseNames[index],
            //                 style: TextStyle(
            //                   color: Colors.white,
            //                   fontSize: 20,
            //                 ),
            //               ),
            //             ],
            //           ),
            //         );
            //       },
            //       scrollDirection: Axis.vertical,
            //     ),
            //   ),
            Expanded(
              child: ListView.builder(
                itemCount: imagePaths.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      navigateToExerciseDetail(context, exerciseNames[index]);
                    },
                    child: Container(
                        margin: EdgeInsets.all(10),
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(imagePaths[index]),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(20),
                          //color: Colors.green,
                        ),
                        child: Stack(
                          children: [
                            // ClipRRect(
                            //   borderRadius: BorderRadius.circular(20),
                            //   child: Text(
                            //     exerciseNames[index],
                            //     textAlign: TextAlign.left,
                            //     style: TextStyle(
                            //       color: Colors.black,
                            //       fontSize: 20,
                            //     ),
                            //   ),
                            // ),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.5),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                ),
                                child: Text(
                                  exerciseNames[index],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                  );
                },
                scrollDirection: Axis.vertical,
              ),
            )
          ],
        ),
      ),
    );
  }
}
