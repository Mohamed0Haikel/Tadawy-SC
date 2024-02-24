import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tdaway/models/model.dart';
import 'package:tdaway/modules/tests_analysis/tests_analysis_details_screen.dart';

class TestAnalysis extends StatelessWidget {
  TestAnalysis({required this.testanalysis, super.key});
  final List<TestsAnalysisModel> testanalysis;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: ClampingScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 3,
      mainAxisSpacing: 10,
      childAspectRatio: 0.80,
      children: List.generate(
        testanalysis.length,
        (index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TestAnalysisDetailScreen(),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                    testanalysis[index].color1,
                    testanalysis[index].color2,
                  ],
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              width: 120,
              height: 190,
              padding: EdgeInsets.all(5),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      height: 95,
                      width: 85,
                      child: Image.asset(testanalysis[index].image),
                    ),
                    Text(
                      testanalysis[index].title,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        overflow: TextOverflow.ellipsis,
                        color: Theme.of(context).colorScheme.onTertiary.withOpacity(0.8),
                      ),
                    ),
                  ]),
            ),
          );
        },
      ),
    );
  }
}




//  Container(
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 end: Alignment.topCenter,
//                 colors: [
//                   Color(0xfffbc2eb),
//                   Color(0xffa6c1ee),
//                 ],
//               ),
//               color: Colors.amber,
//               borderRadius: BorderRadius.circular(20),
//             ),
//             width: 150,
//             height: 190,
//             child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Container(
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(30),
//                     ),
//                     height: 110,
//                     width: 110,
//                     child: Image.asset('assets/icons/clinicsIcons/heart.png'),
//                   ),
//                   Text(
//                     'Test',
//                     style:
//                         TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                   ),
//                 ]),
//           ),