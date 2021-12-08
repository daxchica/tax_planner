import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sri_help/bloc_navigation_bloc/navigation_bloc.dart';
import 'package:sri_help/chart/bar_chart.dart';
//import 'package:flutter/src/material/colors.dart';

class HomePage extends StatelessWidget with NavigationState {
  HomePage({Key? key}) : super(key: key);

  final String title = "IMPLANER";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.blue[900]),
        cardColor: Colors.blue[900],
        cardTheme: CardTheme(
          elevation: 18,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(title),
          leading: IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              BlocProvider.of<NavigationBloc>(context)
                  .add(NavigationEvent.homePageClickedEvent);
            },
          ),
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(12, 10, 12, 2),
              color: Colors.white24,
              height: 280,
              child: GridView.count(
                mainAxisSpacing: 10,
                crossAxisSpacing: 12,
                crossAxisCount: 4,
                children: <Widget>[
                  //My Account
                  Card(
                    child: InkWell(
                      borderRadius: BorderRadius.circular(25),
                      onTap: () {
                        BlocProvider.of<NavigationBloc>(context)
                            .add(NavigationEvent.miCuentaClickedEvent);
                      },
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            Text(
                              "Mi",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              "Cuenta",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  //News
                  Card(
                    child: InkWell(
                      onTap: () {
                        BlocProvider.of<NavigationBloc>(context)
                            .add(NavigationEvent.misNoticiasClickedEvent);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Text(
                            "Noticias",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontSize: 12,
                            ),
                          ),
                          // Text(
                          //   "Economia",
                          //   style: TextStyle(
                          //       color: Colors.white,
                          //       fontWeight: FontWeight.w800,
                          //       fontSize: 20),
                          // ),
                        ],
                      ),
                    ),
                  ),
                  //Calendar
                  Card(
                    child: InkWell(
                      onTap: () {
                        BlocProvider.of<NavigationBloc>(context)
                            .add(NavigationEvent.miCalendarioClickedEvent);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Text(
                            "Calendario",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: 12),
                          ),
                          Text(
                            "Tributario",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // //Shopping
                  // Card(
                  //   child: InkWell(
                  //     onTap: () {
                  //       BlocProvider.of<NavigationBloc>(context)
                  //           .add(NavigationEvent.misComprasYrClickedEvent);
                  //     },
                  //     child: Column(
                  //       mainAxisAlignment: MainAxisAlignment.center,
                  //       children: const <Widget>[
                  //         Text(
                  //           "Mis",
                  //           style: TextStyle(
                  //               color: Colors.white,
                  //               fontWeight: FontWeight.w800,
                  //               fontSize: 20),
                  //         ),
                  //         Text(
                  //           "Compras",
                  //           style: TextStyle(
                  //               color: Colors.white,
                  //               fontWeight: FontWeight.w800,
                  //               fontSize: 20),
                  //         ),
                  //         Text(
                  //           "Año",
                  //           style: TextStyle(
                  //               color: Colors.white,
                  //               fontWeight: FontWeight.w800,
                  //               fontSize: 20),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  // //Graph
                  // Card(
                  //   child: TextButton(
                  //     onPressed: () {
                  //       BlocProvider.of<NavigationBloc>(context)
                  //           .add(NavigationEvent.misGraficosClickedEvent);
                  //     },
                  //     child: const Padding(
                  //       padding: EdgeInsets.fromLTRB(0, 3, 8, 3),
                  //       child: BarChartContent(),
                  //     ),
                  //   ),
                  // ),

                  //MySalesYear
                  Card(
                    child: InkWell(
                      onTap: () {
                        BlocProvider.of<NavigationBloc>(context)
                            .add(NavigationEvent.misVentasYrClickedEvent);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Text(
                            "Ventas",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: 12),
                          ),
                          Text(
                            "Anuales",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: 12),
                          ),
                          Text(
                            "2021",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //MyShoppingMonth
                  Card(
                    child: InkWell(
                      onTap: () {
                        BlocProvider.of<NavigationBloc>(context)
                            .add(NavigationEvent.misComprasMonthClickedEvent);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Text(
                            "Compras",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: 12),
                          ),
                          Text(
                            "Mensuales",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: 12),
                          ),
                          Text(
                            "Dic.",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //null
                  // Card(
                  //   child: InkWell(
                  //     onTap: () {
                  //       BlocProvider.of<NavigationBloc>(context)
                  //           .add(NavigationEvent.kChFmNewsClickedEvent);
                  //     },
                  //     child: Column(
                  //       mainAxisAlignment: MainAxisAlignment.center,
                  //       children: const <Widget>[
                  //         Text(
                  //           "KCH FM",
                  //           style: TextStyle(
                  //               color: Colors.white,
                  //               fontWeight: FontWeight.w800,
                  //               fontSize: 25),
                  //         ),
                  //         SizedBox(
                  //           height: 5.0,
                  //         ),
                  //         Text(
                  //           "Noticias",
                  //           style: TextStyle(
                  //               color: Colors.white,
                  //               fontWeight: FontWeight.w800,
                  //               fontSize: 20),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  //my Shopping Month
                  Card(
                    child: InkWell(
                      onTap: () {
                        BlocProvider.of<NavigationBloc>(context)
                            .add(NavigationEvent.misVentasMonthClickedEvent);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Text(
                            "Ventas",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: 12),
                          ),
                          Text(
                            "Mensuales",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: 12),
                          ),
                          Text(
                            "Dic.",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: InkWell(
                      onTap: () {
                        BlocProvider.of<NavigationBloc>(context)
                            .add(NavigationEvent.miSriAccessClickedEvent);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Text(
                            "SRI",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: 12),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            "Acceso",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Card(
                  //   child: InkWell(
                  //     onTap: () {
                  //       BlocProvider.of<NavigationBloc>(context)
                  //           .add(NavigationEvent.miPostClickedEvent);
                  //     },
                  //     child: Column(
                  //       mainAxisAlignment: MainAxisAlignment.center,
                  //       children: const <Widget>[
                  //         Text(
                  //           "Noticias",
                  //           style: TextStyle(
                  //               color: Colors.white,
                  //               fontWeight: FontWeight.w800,
                  //               fontSize: 25),
                  //         ),
                  //         SizedBox(
                  //           height: 5.0,
                  //         ),
                  //         Text(
                  //           "SRI",
                  //           style: TextStyle(
                  //               color: Colors.white,
                  //               fontWeight: FontWeight.w800,
                  //               fontSize: 20),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  //
                  //
                  //
                  // const ChartContainer(
                  //   title: 'Resumen',
                  //   color: Colors.blue,
                  //   chart: BarChartContent(),
                  // ),
                  //
                  //
                  //
                  //
                ],
              ),
            ),
            Container(
              height: 100,
              color: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}
