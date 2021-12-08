import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc_navigation_bloc/navigation_bloc.dart';
import '../pages/home_page.dart';

class SideBarLayout extends StatelessWidget {
  const SideBarLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<NavigationBloc>(
          create: (context) => NavigationBloc(HomePage()),
          child: Stack(
            children: <Widget>[
              // const SideBar(),
              BlocBuilder<NavigationBloc, NavigationState>(
                builder: (context, navigationState) {
                  return navigationState as Widget;
                },
              ),
            ],
          )),
    );
  }
}
