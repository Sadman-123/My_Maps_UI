import 'package:flutter/material.dart';
import 'package:lox0/presentation/ui/home.dart';
class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      initialRoute: '/',
      routes: {
        '/':(context)=>Home()
      },
    );
  }
}