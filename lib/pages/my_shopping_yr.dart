import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sri_help/bloc_navigation_bloc/navigation_bloc.dart';

class MisComprasYr extends StatefulWidget with NavigationState {
  MisComprasYr({Key? key}) : super(key: key);

  @override
  State<MisComprasYr> createState() => _MisComprasYrState();
}

class _MisComprasYrState extends State<MisComprasYr> {
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
          padding: const EdgeInsets.fromLTRB(45, 25, 35, 5),
          child: Column(
            children: <Widget>[
              const Text(
                "Resumen de Compras 2021",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 40.0,
                  //backgroundColor: Colors.blueGrey
                ),
              ),
              Expanded(
                child: Row(
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
                          "Total Ventas",
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
                          '934.00',
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 28),
                        ),
                        Text(
                          '1,004.00',
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 28),
                        ),
                        Text(
                          '941.00',
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 28),
                        ),
                        Text(
                          '1,100.00',
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 28),
                        ),
                        Text(
                          '1,040.00',
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 28),
                        ),
                        Text(
                          '901.00',
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 28),
                        ),
                        Text(
                          '834.00',
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 28),
                        ),
                        Text(
                          '1,099.00',
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 28),
                        ),
                        Text(
                          '954.00',
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 28),
                        ),
                        Text(
                          '634.00',
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 28),
                        ),
                        Text(
                          "9,000.0",
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 28),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
