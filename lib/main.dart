import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
String btnText1="Button One";
Color btnColor1=Colors.purpleAccent;
bool imgVis1=false;
String btnText2="Button Two";
bool imgVis2=false;
String imgSrc1="https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_960_720.jpg";
double imgHeight=150;
double imgWidth=200;
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

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(image:
                            NetworkImage(imgSrc1),fit: BoxFit.cover),
                            border: Border.all(color: Colors.purple,width: 4),
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          height: imgHeight,
                           width: imgWidth,
                            child: Image.network(imgSrc1)),
                        Container(
                            height: imgHeight,
                            width: imgWidth,
                            child: Image.network(imgSrc1)),
                        Container(
                            height: imgHeight,
                            width: imgWidth,
                            child: Image.network(imgSrc1)),
                        Container(
                            height: imgHeight,
                            width: imgWidth,
                            child: Image.network(imgSrc1)),
                        Container(
                            height: imgHeight,
                            width: imgWidth,
                            child: Image.network(imgSrc1)),
                      ],
                    ),
                  ),






                  RaisedButton(
                    color: btnColor1,
                      child: Text(btnText1),
                      onPressed: (){
                        setState(() {
                          btnColor1=Colors.amberAccent;
                          btnText1="Button Pressed";
                          imgVis1=true;
                        });

                      }),
                  Visibility(
                    visible: imgVis1,
                    child: Container(
                        height: 500,
                        width: 400,
                        child: Image.network(imgSrc1)
                    ),

                  ),

                  Text("Flower"),
                  RaisedButton(
                    child: Text("Button Two"),
                      onPressed: (){
                    setState(() {
                      btnText2="Button Pressed";
                      imgVis2=true;
                    });
                  }),

                  Visibility(
                    visible: imgVis2,
                    child: Container(
                      height: 500,
                      width: 300,
                      child: Image.asset("assets/images/image1.jpeg"),
                    ),
                  ),

                ],
              ),
            ),
          ),

    );
  }
}
