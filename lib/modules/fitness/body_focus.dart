import 'package:flutter/material.dart';
import 'package:tdaway/modules/fitness/widgets/body_focus_widget.dart';

import '../../data/body_focus_data.dart';
import '../../models/body_focus_model.dart';

class BodyFocus extends StatelessWidget {
  BodyFocus({
    super.key,
  });
  //final List<BodyFocusModel> bodyFocus;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Body Focus',
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: bodyFocusData.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return BodyFocusWidget(
                imagePathW: bodyFocusData[index].imagePathW,
                title: bodyFocusData[index].title,
                //exercisesType: bodyFocusData[index].exercisesNumber,
                //exercisesName: [bodyFocusData[index]],

                //route: bodyFocusData[index].route,
              );
            },
          ),
        ),

        // List.generate(
        //     bodyFocusWidget.length,
        //     (index) {
        //       return BodyFocusWidget(
        //         imagePathW: bodyFocusWidget[index].imagePathW,
        //         title: bodyFocusWidget[index].title,
        //       );
        //     },
        //   ),
      ],
    );
  }
}
