import 'dart:ui';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

List<BarChartGroupData> barChartGroupData = [
  BarChartGroupData(
    x: 1,
    barRods: [
      BarChartRodData(
        y: (1.0),
        colors: [const Color(0xff00e676), const Color(0xff00e676)],
        borderRadius: const BorderRadius.only(
            topLeft: Radius.zero,
            topRight: Radius.zero,
            bottomLeft: Radius.zero,
            bottomRight: Radius.zero),
        width: 15,
      ),
    ],
  ),
  BarChartGroupData(
    x: 2,
    barRods: [
      BarChartRodData(
        y: 0.85,
        colors: [const Color(0xffef5350), const Color(0xffef5350)],
        borderRadius: const BorderRadius.only(
            topLeft: Radius.zero,
            topRight: Radius.zero,
            bottomLeft: Radius.zero,
            bottomRight: Radius.zero),
        width: 15,
      ),
    ],
  ),
  BarChartGroupData(
    x: 3,
    barRods: [
      BarChartRodData(
        y: 0.150,
        colors: [const Color(0xffff6f00), const Color(0xffff6f00)],
        borderRadius: const BorderRadius.only(
            topLeft: Radius.zero,
            topRight: Radius.zero,
            bottomLeft: Radius.zero,
            bottomRight: Radius.zero),
        width: 15,
      ),
    ],
  ),
];
