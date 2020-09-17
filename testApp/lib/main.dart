import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ShopyFast",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginPage()
    );
  }
}
class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold (
      appBar: AppBar(title: Text("Entrance"),),
      body: Container(
        padding: const EdgeInsets.all(16),
        
        child: Column(
          children:<Widget>[  
            Container( child Text("LOGIN"),),
            Text("USERNAME"),

          ]) 
      ),
    ); 
  }
  
}
