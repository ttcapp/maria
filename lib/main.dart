import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Maria"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [


              RaisedButton(
                  child: Text("Button 1"),
                  onPressed: (){

                  }),
              Container(
                  height: 500,
                  width: 400,
                  child: Image.network("https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_960_720.jpg")
              ),
              Text("Flower"),
              Container(
                height: 600,
                width: 300,
                child: Image.asset("assets/images/image1.jpeg"),
              ),

            ],
          ),
        ),
      ),

    );
  }
}
