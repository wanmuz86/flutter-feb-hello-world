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
  // Declaring a controller to be bind to the TextField
 var nameEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(title: Text("Hello World"), backgroundColor: Colors.red,),
      body: SingleChildScrollView(
        child: Center(child: Column(
          children: [
            Text("Hello World", style: TextStyle(color: Colors.red, fontSize: 40),),
            SizedBox(height: 10,),
            Text("Welcome to my app", style: TextStyle(color: Colors.blue,
            fontSize: 32),),
            SizedBox(height: 10,),
            Text("I hope you enjoy it", style: TextStyle(color:Colors.green, fontSize: 24),),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("This is left"),
                SizedBox(width: 10,),
                Text("This is right")
              ],
            ),
            Image.network("https://cdn.audleytravel.com/4872/3480/79/264526-kuala-lumpur-by-night.jpg"),
            TextField(decoration: InputDecoration(hintText: "Enter your name"),
            controller: nameEditingController,),
            TextButton(onPressed: (){
              print("Hello ${nameEditingController.text}");
            }, child: Text("Press me!"))

          ],
        )
        ),
      ),
    );
  }
}

