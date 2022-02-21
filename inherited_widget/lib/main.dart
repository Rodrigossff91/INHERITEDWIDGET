import 'package:flutter/material.dart';
import 'package:inherited_widget/splash/splash_page.dart';

import 'home/home_page.dart';
import 'model/use_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return UserModel(
      name: "Rodrigo Ferreira",
      birthDate: "10/04/1991",
      imgAvatar:
          'https://img.freepik.com/fotos-gratis/imagem-aproximada-em-tons-de-cinza-de-uma-aguia-careca-americana-em-um-fundo-escuro_181624-31795.jpg?size=626&ext=jpg',
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {'/': (_) => SplashPage(), '/home': (_) => HomePage()},
      ),
    );
  }
}
