import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sri_help/bloc_navigation_bloc/navigation_bloc.dart';

// int misVentas = totalVentas as int;
// void totalVentas(extend) => {1 + 10000};

class MisVentasYr extends StatelessWidget with NavigationState {
  MisVentasYr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = "IMPLANER";
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(title),
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
          color: Colors.white30,
          padding: const EdgeInsets.fromLTRB(45, 25, 35, 5),
          child: Column(
            children: <Widget>[
              const Text(
                "Resumen de Ventas 2021",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 40.0,
                  //backgroundColor: Colors.blueGrey
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        'Enero',
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 28),
                      ),
                      Text(
                        'Febrero',
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 28),
                      ),
                      Text(
                        'Marzo',
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 28),
                      ),
                      Text(
                        'Abril',
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 28),
                      ),
                      Text(
                        'Mayo',
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 28),
                      ),
                      Text(
                        'Junio',
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 28),
                      ),
                      Text(
                        'Julio',
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 28),
                      ),
                      Text(
                        'Agosto',
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 28),
                      ),
                      Text(
                        'Septiembre',
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 28),
                      ),
                      Text(
                        'Octubre',
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 28),
                      ),
                      Text(
                        "Total Año",
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 28),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const <Widget>[
                      Text(
                        '1,234.00',
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 28),
                      ),
                      Text(
                        '1,234.00',
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 28),
                      ),
                      Text(
                        '1,234.00',
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 28),
                      ),
                      Text(
                        '1,234.00',
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 28),
                      ),
                      Text(
                        '1,234.00',
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 28),
                      ),
                      Text(
                        '1,234.00',
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 28),
                      ),
                      Text(
                        '1,234.00',
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 28),
                      ),
                      Text(
                        '1,234.00',
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 28),
                      ),
                      Text(
                        '1,234.00',
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 28),
                      ),
                      Text(
                        '1,234.00',
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 28),
                      ),
                      Text(
                        "10,200.00",
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 28),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
