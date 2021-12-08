import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sri_help/chart_data/bar_chart_data.dart';

class BarChartContent extends StatelessWidget {
  const BarChartContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        backgroundColor: Colors.white,
        maxY: 1.2,
        barGroups: barChartGroupData,
        titlesData: FlTitlesData(
          topTitles: SideTitles(showTitles: false),
          rightTitles: SideTitles(showTitles: false),
          bottomTitles: SideTitles(
            showTitles: true,
            getTextStyles: (context, value) => const TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
            getTitles: (value) {
              switch (value.toInt()) {
                case 1:
                  return 'Vtas';
                case 2:
                  return 'Cpas';
                case 3:
                  return 'Saldo';
              }
              return '';
            },
            rotateAngle: 0.0,
          ),
          leftTitles: SideTitles(
            interval: (0.2),
            showTitles: true,
            getTextStyles: (context, value) => const TextStyle(
              color: Colors.black,
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
            // getTitles: (value) {
            // if(value.toInt()==0) {
            //   return '';
            //   } else {
            //   return value.toInt().toString();
            //   }
            //   },
            // ),
            // ),
            //borderData:
            // FlBorderData(
            //   border: Border.all(
            //     color: Colors.lightBlueAccent,
            //     width: 0.8,
            //   ),
            // ),
          ),
        ),
      ),
    );
  }
}
