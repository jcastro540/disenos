import 'package:disenos/pages/basico_page.dart';
import 'package:disenos/pages/botones_page.dart';
import 'package:disenos/pages/scroll_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    //Cambiar color de barrar
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.transparent
      )
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      initialRoute: 'botones',
      routes: {
        'basico'   : (BuildContext constex)=> BasicoPage(),
        'scroll'   : (BuildContext constex)=> ScrollPage(),
        'botones'   : (BuildContext constex)=> BotonesPage(),
      },
    );
  }
}
