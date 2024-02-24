import 'package:flutter/material.dart';
import 'package:tdaway/modules/fitness/body_focus.dart';

import 'fitness/fitness_home.dart';
import 'fitness/report_activity.dart';

class FitnessScreen extends StatefulWidget {
  const FitnessScreen({super.key});

  @override
  State<FitnessScreen> createState() => _FitnessScreenState();
}

class _FitnessScreenState extends State<FitnessScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final _tabs = const [
    Tab(text: 'Tab1'),
    Tab(text: 'Prescriptions'),
    Tab(text: 'Tab3'),
    // Tab(text: 'Tab3'),
  ];

  final _iconTabs = const [
    Tab(icon: Icon(Icons.widgets_rounded)),
    Tab(icon: Icon(Icons.pie_chart_sharp)),
    Tab(icon: Icon(Icons.fitness_center_rounded)),
    // Tab(icon: Icon(Icons.person_rounded)),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[900],
        body: Column(
          children: [
            const SizedBox(height: 20),
            Expanded(
              child: Container(
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  //border: Border.all(color: Colors.black, width: 1),
                ),
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    FitnessHome(),
                    ReportActivity(),
                    BodyFocus(
                        //bodyFocus: [],
                        ),
                    // Container(
                    //   child: Center(
                    //     child: Text('Tab 4'),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(15),
              height: 75,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xfff04444),
              ),
              child: TabBar(
                controller: _tabController,
                tabs: _iconTabs,
                labelColor: Colors.white,
                unselectedLabelColor: Color(0xffff8787),
                indicatorColor: Colors.white.withOpacity(0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
