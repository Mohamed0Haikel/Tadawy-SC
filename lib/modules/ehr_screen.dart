import 'package:flutter/material.dart';
import 'package:tdaway/modules/ehr/ehr_files.dart';
import 'package:tdaway/modules/ehr/ehr_prescriptions.dart';

class EHRScreen extends StatefulWidget {
  EHRScreen({super.key});

  @override
  State<EHRScreen> createState() => _EHRScreenState();
}

class _EHRScreenState extends State<EHRScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final _tabs = const [
    Tab(text: 'Files'),
    Tab(text: 'Prescriptions'),
    Tab(text: 'Tab3'),
  ];

  final _iconTabs = const [
    Tab(icon: Icon(Icons.medication_outlined)),
    Tab(icon: Icon(Icons.medical_services_outlined)),
    Tab(icon: Icon(Icons.settings)),
  ];

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Color primaryColor = Theme.of(context).colorScheme.primary;

    return Scaffold(
        appBar: AppBar(
          title: Text('Health Status'),
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
          foregroundColor: Colors.white,
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              // constraints: const BoxConstraints(maxWidth: 400),
              child: TabBar(
                controller: _tabController,
                tabs: _tabs,
                unselectedLabelColor: Theme.of(context).colorScheme.onPrimaryContainer,
                labelColor: Theme.of(context).colorScheme.onTertiary,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(80.0),
                  color: Theme.of(context).colorScheme.onPrimaryContainer.withOpacity(0.7),
                ),
              ),
            ),

            Expanded(
              child: Container(
                margin: EdgeInsets.all(7),
                // color: Theme.of(context).colorScheme.primary,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // border: Border.all(
                  //   color: Theme.of(context).colorScheme.onPrimaryContainer,
                  //   width: 3,
                  //   ),

                ),
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Files(),
                    Prescriptions(),
                    Center(
                      child: Text('Tab 3'),
                    ),
                  ],
                )
              ),
            ),
          ],
        ));
  }
}

