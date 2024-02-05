import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(title: Text("Hello World"), backgroundColor: Colors.red,),
      body: Center(child: Column(
        children: [
          Text("Hello World"),
          Text("Welcome to my app", style: TextStyle(color: Colors.blue,
          fontSize: 32),),
          Text("I hope you enjoy it"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("This is left"),
              Text("This is right")
            ],
          )
        ],
      )),
    );
  }
}

