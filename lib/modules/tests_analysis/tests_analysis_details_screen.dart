import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tdaway/constants/constants.dart';
import 'package:tdaway/modules/tests_analysis/tests_analysis_details_review_screen.dart';

class TestAnalysisDetailScreen extends StatelessWidget {
  const TestAnalysisDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final nowformat = DateFormat.yMMMMEEEEd().format(now);

    return Scaffold(
      //backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: Text(
          'Test Detail',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            //color: Theme.of(context).colorScheme.onTertiary,
            fontFamily: 'Roboto',
          ),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          ),
        ],
      ),
      body:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          margin: EdgeInsets.only(
            top: 20,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          height: 400,
          width: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(nowformat.toString(),
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 241, 221, 221),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        height: 95,
                        width: 85,
                        child: Image.asset(AppImages.brainClinic),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Thyroid',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              fontFamily: 'Roboto',
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Lab Test',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(1, 1, 1, 0.5),
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Text(
                    '\$205.00',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(1, 1, 1, 0.8),
                      fontFamily: 'Roboto',
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Tax',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(1, 1, 1, 0.8),
                      fontFamily: 'Roboto',
                    ),
                  ),
                  Text(
                    '\$5.00',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(1, 1, 1, 0.8),
                      fontFamily: 'Roboto',
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'GST',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(1, 1, 1, 0.8),
                      fontFamily: 'Roboto',
                    ),
                  ),
                  Text(
                    '\$5.00',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(1, 1, 1, 0.8),
                      fontFamily: 'Roboto',
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sub total',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(1, 1, 1, 0.8),
                      fontFamily: 'Roboto',
                    ),
                  ),
                  Text(
                    '\$5.00',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(1, 1, 1, 0.8),
                      fontFamily: 'Roboto',
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Grand Total',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(1, 1, 1, 0.9),
                      fontFamily: 'Roboto',
                    ),
                  ),
                  Text(
                    '\$205.00',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(1, 1, 1, 0.9),
                      fontFamily: 'Roboto',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Amount Payable',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(1, 1, 1, 0.9),
                        fontFamily: 'Roboto',
                      ),
                    ),
                    Text(
                      '\$205',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).colorScheme.onTertiary,
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 60,
                width: 350,
                child: FloatingActionButton(
                  backgroundColor:
                      Theme.of(context).colorScheme.onPrimaryContainer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    'Proceed',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).colorScheme.onTertiary,
                      fontFamily: 'Roboto',
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TestAnalysisDetailReviewScreen(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
