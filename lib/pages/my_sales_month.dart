import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sri_help/bloc_navigation_bloc/navigation_bloc.dart';
import 'package:sri_help/chart/bar_chart.dart';

// int misVentas = totalVentas as int;
// void totalVentas(extend) => {1 + 10000};

class MisVentasMonth extends StatelessWidget with NavigationState {
  MisVentasMonth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = "IMPLANER";
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(title),
          backgroundColor: Colors.blue[900],
          leading: IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              BlocProvider.of<NavigationBloc>(context)
                  .add(NavigationEvent.homePageClickedEvent);
            },
          ),
        ),
        body: Container(
          color: Colors.white30,
          padding: const EdgeInsets.fromLTRB(45, 25, 35, 5),
          child: Column(
            children: <Widget>[
              const Text(
                "Resumen de Ventas Último Mes",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 40.0,
                  //backgroundColor: Colors.blueGrey
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  Text(
                    'Proveedor 1',
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    '1,000.00',
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28),
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Proveedor 2',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 28,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    '950.00',
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28),
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Proveedor 3',
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    '80.00',
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28),
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Total Mes 3',
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    '2,030.00',
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28),
                    textAlign: TextAlign.right,
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
