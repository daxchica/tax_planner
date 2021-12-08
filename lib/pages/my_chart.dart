import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sri_help/bloc_navigation_bloc/navigation_bloc.dart';
import 'package:sri_help/chart/bar_chart.dart';

import '../chart_container.dart';

class MisGraficos extends StatefulWidget with NavigationState {
  MisGraficos({Key? key}) : super(key: key);

  @override
  State<MisGraficos> createState() => _MisGraficosState();
}

class _MisGraficosState extends State<MisGraficos> {
  String title = "IMPLANER";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(title),
          backgroundColor: Colors.indigo,
          leading: IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              BlocProvider.of<NavigationBloc>(context)
                  .add(NavigationEvent.homePageClickedEvent);
            },
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.fromLTRB(35, 35, 35, 35),
          children: const <Widget>[
            ChartContainer(
              title: 'Resumen',
              color: Colors.white,
              chart: BarChartContent(),
            ),
            SizedBox(height: 10),
            ChartContainer(
              title: 'Resumen',
              color: Colors.white,
              chart: BarChartContent(),
            ),
            SizedBox(height: 10),
            ChartContainer(
              title: 'Resumen',
              color: Colors.white,
              chart: BarChartContent(),
            ),
          ],
        ),
      ),
    );
  }
}
