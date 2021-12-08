import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sri_help/bloc_navigation_bloc/navigation_bloc.dart';
import 'package:sri_help/chart/bar_chart.dart';

class MisComprasMonth extends StatefulWidget with NavigationState {
  MisComprasMonth({Key? key}) : super(key: key);

  @override
  State<MisComprasMonth> createState() => _MisComprasMonthState();
}

class _MisComprasMonthState extends State<MisComprasMonth> {
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
        body: Container(
          padding: const EdgeInsets.fromLTRB(45, 5, 35, 5),
          child: Column(
            children: <Widget>[
              const Text(
                "Resumen de Compras Mes",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 40.0,
                  //backgroundColor: Colors.blueGrey
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  Text(
                    'Vivienda',
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28),
                  ),
                  Text(
                    '880.00',
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  Text(
                    'Educación',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 28,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  Text(
                    '500.00',
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  Text(
                    'Alimentación',
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28),
                  ),
                  Text(
                    '720.00',
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  Text(
                    'Vestimenta',
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28),
                  ),
                  Text(
                    '200.00',
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  Text(
                    'Total Mes',
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28),
                  ),
                  Text(
                    '2,300.00',
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                child: const BarChartContent(),
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                height: 200,
                width: 280,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
