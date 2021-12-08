// ignore_for_file: implementation_imports

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sri_help/bloc_navigation_bloc/navigation_bloc.dart';
import 'package:flutter/src/material/circle_avatar.dart';

class MiCuenta extends StatelessWidget with NavigationState {
  MiCuenta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = "IMPLANER";
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[900],
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
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CircleAvatar(
                radius: 45.0,
                //backgroundColor: Colors.white,
                backgroundImage: AssetImage("assets/images/dax_chica_1.png"),
              ),
              const SizedBox(
                height: 8.0,
              ),
              const Text(
                'Dax Chica',
                style: TextStyle(
                    color: Color(0xffffffff),
                    fontSize: 22,
                    fontFamily: 'Pacifico',
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 2.0,
              ),
              const SizedBox(
                width: 150,
                height: 10,
                child: Divider(
                  thickness: 6.0,
                  color: Colors.white,
                  //height: 15.0,
                ),
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
                margin: EdgeInsets.symmetric(horizontal: 35),
                child: ListTile(
                  leading: Icon(
                    Icons.arrow_forward,
                    color: Colors.black,
                  ),
                  title: Text(
                    'RUC 0908909898001',
                    style: (TextStyle(
                        fontSize: 16, color: Colors.black, wordSpacing: 2)),
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
                margin: EdgeInsets.symmetric(horizontal: 35),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.black,
                  ),
                  title: Text(
                    'daxchica@hotmail.com',
                    style: (TextStyle(fontSize: 16)),
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
                margin: EdgeInsets.symmetric(horizontal: 35),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.black,
                  ),
                  title: Text(
                    '+593 99397-9934',
                    style: (TextStyle(fontSize: 16)),
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
                margin: EdgeInsets.symmetric(horizontal: 35),
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
                    onPressed: () {},
                    child: const Text(
                      'Edit',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Save',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
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
