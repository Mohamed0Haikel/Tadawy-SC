import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tdaway/modules/widgets/tests_analysis.dart';
import 'package:tdaway/data/data.dart';
import 'package:tdaway/models/model.dart';


class TestAnalysisScreen extends StatelessWidget {
  const TestAnalysisScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final List<TestsAnalysisModel> testsanalysis = testanalysis;
    return Scaffold(
      appBar: AppBar(
        title: Text('Test&Analysis '),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
        foregroundColor: Theme.of(context).colorScheme.onTertiary,
      ),
      body: TestAnalysis(testanalysis: testsanalysis),
    );
  }
}