import 'package:flutter/material.dart';
import 'package:publish/router/route_constants.dart';
import 'package:publish/router/router.dart';

void main() {
  runApp(Scoder());
}

class Scoder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      onGenerateRoute: Routerr.onGenerateRoute,
      initialRoute: homeRoute,
    );
  }
}

// architure
// presentation layer -> UI , screen
// network layer -> logic
// widgets
