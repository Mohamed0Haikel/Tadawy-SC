import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class ReportActivity extends StatefulWidget {
  const ReportActivity({Key? key}) : super(key: key);

  @override
  State<ReportActivity> createState() => _ReportActivityState();
}

class _ReportActivityState extends State<ReportActivity> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text(
            'My Report',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10.0),
          _buildDataRow(
            title: 'Weight',
            value: '22',
            iconSymbol: Icon(Icons.speed),
          ),
          const SizedBox(height: 20.0),
          Expanded(
            child: LineChart(
              _lineChartData(),
            ),
          ),
          const SizedBox(height: 10.0),
          _buildDataRow(
            title: 'Calories',
            value: '500',
            iconSymbol: Icon(Icons.local_fire_department),
          ),
          const SizedBox(height: 10.0),
          Expanded(
            child: LineChart(
              _lineChartData(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDataRow(
      {required String title,
      required String value,
      required Icon iconSymbol}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 10.0),
            Icon(
              iconSymbol.icon,
              size: 30,
              color: Color(0xfff04444),
            )
          ],
        ),
        Text(
          value,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
      ],
    );
  }

  LineChartData _lineChartData() {
    return LineChartData(
      gridData: FlGridData(show: false),
      titlesData: FlTitlesData(
        leftTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: (value, meta) {
              return Text(
                value.toInt().toString(),
                style: TextStyle(color: Colors.white.withOpacity(0.4)),
              );
            },
          ),
        ),
      ),
      borderData: FlBorderData(
        show: true,
        border: Border.all(
          color: const Color(0xfff86262),
          width: 0.5,
        ),
      ),
      minX: 0,
      maxX: 30,
      minY: 0,
      maxY: 18,
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(1, 4),
            FlSpot(2, 2),
            FlSpot(3, 6),
            FlSpot(4, 8),
            FlSpot(5, 5),
            FlSpot(6, 7),
            FlSpot(7, 9),
            FlSpot(9, 7),
            FlSpot(9, 11),
            FlSpot(10, 10),
            FlSpot(11, 17),
            FlSpot(12, 15),
            FlSpot(13, 12),
            FlSpot(14, 14),
          ],
          isCurved: true,
          color: Color(0xfff04444),
          dotData: FlDotData(
            show: true,
            getDotPainter: (spot, percent, barData, index) {
              return FlDotCirclePainter(
                radius: 6,
                color: Colors.grey[900]!,
                strokeWidth: 3,
                strokeColor: Color(0xfff86262),
              );
            },
          ),
          belowBarData: BarAreaData(
            show: false,
            color: const Color(0xfff04444).withOpacity(0.1),
          ),
        ),
      ],
    );
  }
}





// color: Color(0xfff86262),
// strokeWidth: 3,
// strokeColor: Colors.white.withOpacity(0.7),


// import 'package:flutter/material.dart';
// import 'package:fl_chart/fl_chart.dart';

// class ReportActivity extends StatefulWidget {
//   const ReportActivity({super.key});

//   @override
//   State<ReportActivity> createState() => _ReportActivityState();
// }

// class _ReportActivityState extends State<ReportActivity> {
//   @override
//   Widget build(BuildContext context) {
//     return LineChart(
//       LineChartData(
//         gridData: FlGridData(show: false),
//         titlesData: FlTitlesData(show: false),
//         borderData: FlBorderData(
//           show: true,
//           border: Border.all(color: const Color(0xff37434d), width: 1),
//         ),
//         minX: 0,
//         maxX: 7,
//         minY: 0,
//         maxY: 10,
//         lineBarsData: [
//           LineChartBarData(
//             spots: [
//               FlSpot(0, 0),
//               FlSpot(1, 4),
//               FlSpot(2, 2),
//               FlSpot(3, 6),
//               FlSpot(4, 8),
//               FlSpot(5, 5),
//               FlSpot(6, 7),
//             ],
//             isCurved: true,
//             //color: [Colors.blue],
//             dotData: FlDotData(show: false),
//             belowBarData: BarAreaData(show: false),
//           ),
//         ],
//       ),
//     );
//   }
// }
