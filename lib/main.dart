import 'package:beginner/views/WidgetTree.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/scheduler.dart';

void main() {
  runApp(const MyApp());
}

// Stateless: can't refesh state UI not change data (render at runtime call function Build() one time)
// Statefu: can refesh UI to change Data ( when refesh state (change data) at runtime every change data call function Build() )
// setState: one of way to refesh UI for StatefullWidget

// Material App
// Scaffold
// App Title
// Bottom Navigation Bar setState

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.dark,
        ),
      ),
      home: const WidgetTree(),
    );
  }
}
