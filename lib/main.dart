import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppBar 1"),
        ),
        body: Container(
          child: Center(
            child: Container(
              margin: EdgeInsets.all(30),
              color: Colors.red,
              child: Container(
                margin: EdgeInsets.all(30),
                color: Colors.purple,
                child: Scaffold(
                  body: Container(
                    margin: EdgeInsets.all(30),
                    color: Colors.green,
                    child: Container(
                      child: InkWell(onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (ctx)=>MyApp2()));
                      },child: Text("Scaffold 1")),
                    ),
                  ),
                )
              ),
            ),
          ),
        ),
      ),
    );
  }
}
// Yapılan Değişikliğin Gözükeceği Blok
// Burası Çokomelli
class MyApp2 extends StatefulWidget {
  const MyApp2({Key? key}) : super(key: key);

  @override
  State<MyApp2> createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(30),
        color: Colors.green,
        child: Container(
          child: InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (ctx)=>MyApp()));
          },child: Text("Scaffold 2")),
        ),
      ),
    );
  }
}

