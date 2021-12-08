// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sri_help/bloc_navigation_bloc/navigation_bloc.dart';
// import 'package:sri_help/sidebar/menu_item.dart';
import 'package:flutter/animation.dart';
// ignore: implementation_imports

class SideBar extends StatefulWidget {
  const SideBar({Key? key}) : super(key: key);
  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar>
    with SingleTickerProviderStateMixin<SideBar> {
  late AnimationController _animationController;
  late StreamController<bool> isSideBarOpenedStreamController;
  late Stream<bool> isSideBarOpenedStream;
  late StreamSink<bool> isSideBarOpenedSink;
  final _animationDuration = const Duration(milliseconds: 500);

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: _animationDuration);
    isSideBarOpenedStreamController = PublishSubject<bool>();
    isSideBarOpenedStream = isSideBarOpenedStreamController.stream;
    isSideBarOpenedSink = isSideBarOpenedStreamController.sink;
  }

  @override
  void dispose() {
    _animationController.dispose();
    isSideBarOpenedStreamController.close();
    isSideBarOpenedSink.close();
    super.dispose();
  }

  void onIconPressed() {
    final animationStatus = _animationController.status;
    final isAnimationCompleted = animationStatus == AnimationStatus.completed;

    if (isAnimationCompleted) {
      isSideBarOpenedSink.add(false);
      _animationController.reverse();
    } else {
      isSideBarOpenedSink.add(true);
      _animationController.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return StreamBuilder<bool>(
      initialData: false,
      stream: isSideBarOpenedStream,
      builder: (context, isSideBarOpenedAsync) {
        return AnimatedPositioned(
          duration: _animationDuration,
          top: 0,
          bottom: 0,
          left: isSideBarOpenedAsync.data! ? 0 : -screenWidth,
          right: isSideBarOpenedAsync.data! ? 0 : screenWidth - 10,
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  color: const Color(0xFF262AAA),
                  child: SafeArea(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        ListTile(
                          title: Text(
                            "Dax Chica",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.w800),
                          ),
                          subtitle: Text(
                            "daxchica@hotmail.com",
                            style: TextStyle(
                              color: Color(0XFF1885FD),
                              fontSize: 20,
                            ),
                          ),
                          leading: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/dax_chica_1.png"),
                            radius: 40,
                          ),
                        ),
                        Divider(
                          thickness: 1.5,
                          color: Colors.white.withOpacity(0.5),
                          indent: 32,
                          endIndent: 32,
                        ),
                        const Text(
                          'RUC',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.white60,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        const Card(
                          margin: EdgeInsets.symmetric(
                              horizontal: 35, vertical: 10),
                          child: ListTile(
                            leading: Icon(
                              Icons.arrow_forward,
                              color: Colors.black,
                            ),
                            title: Text(
                              'RUC 0908909898001',
                              style: (TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  wordSpacing: 2)),
                            ),
                          ),
                        ),
                        const Text(
                          'Correo Electrónico',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.white60,
                          ),
                        ),
                        const Card(
                          margin: EdgeInsets.symmetric(
                              horizontal: 35, vertical: 10),
                          child: ListTile(
                            leading: Icon(
                              Icons.email,
                              color: Colors.black,
                            ),
                            title: Text(
                              'daxchica@hotmail.com',
                              style: (TextStyle(fontSize: 18)),
                            ),
                          ),
                        ),
                        const Text(
                          'Teléfono Celular',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.white60,
                          ),
                        ),
                        const Card(
                          margin: EdgeInsets.symmetric(
                              horizontal: 35, vertical: 10),
                          child: ListTile(
                            leading: Icon(
                              Icons.phone,
                              color: Colors.black,
                            ),
                            title: Text(
                              '+593 99397-9934',
                              style: (TextStyle(fontSize: 18)),
                            ),
                          ),
                        ),
                        const Text(
                          'Forma de Pago',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.white60,
                          ),
                        ),
                        const Card(
                          margin: EdgeInsets.symmetric(
                              horizontal: 35, vertical: 10),
                          child: ListTile(
                            leading: Icon(
                              Icons.account_balance_sharp,
                              color: Colors.black,
                            ),
                            title: Text(
                              'Visa - Credito',
                              style: (TextStyle(fontSize: 18)),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                BlocProvider.of<NavigationBloc>(context).add(
                                    NavigationEvent.miCalendarioClickedEvent);
                              },
                              child: const Text(
                                'Edit',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                BlocProvider.of<NavigationBloc>(context).add(
                                    NavigationEvent.miCalendarioClickedEvent);
                              },
                              child: const Text(
                                'Save',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0, -0.9),
                child: GestureDetector(
                  onTap: () {
                    onIconPressed();
                  },
                  child: ClipPath(
                    clipper: CustomMenuClipper(),
                    child: Container(
                      width: 35,
                      height: 80,
                      color: Color(0xFF262AAA),
                      alignment: Alignment.centerLeft,
                      child: AnimatedIcon(
                        icon: AnimatedIcons.menu_home,
                        progress: _animationController.view,
                        color: Color(0XFF1885FD),
                        size: 28,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class CustomMenuClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Paint paint = Paint();
    paint.color = Colors.white;

    final width = size.width;
    final height = size.height;

    Path path = Path();
    path.moveTo(0, 0);
    path.quadraticBezierTo(0, 8, 10, 15);
    path.quadraticBezierTo(width - 1, height / 2 - 20, width, height / 2);
    path.quadraticBezierTo(width + 1, height / 2 + 20, 20, height - 20);
    path.quadraticBezierTo(0, height - 10, 0, height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
