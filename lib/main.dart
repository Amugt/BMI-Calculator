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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: bmi(),
    );
  }
}

class bmi extends StatefulWidget {
  const bmi({Key? key}) : super(key: key);

  @override
  State<bmi> createState() => _bmiState();
}

class _bmiState extends State<bmi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

          title:Container(
              child: Text("BMI calculator"))
    ),
        body:Container(

          alignment: Alignment.center,

          child:Column(
            children: <Widget>[
             Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(

                    width:150,
                    height:100,

                    child:  TextField(
                      keyboardType:
                      TextInputType.numberWithOptions(decimal: true),
                      style: TextStyle(color: Colors.blueAccent),
                      decoration: InputDecoration(
                          prefixText: "Weight:",
                        ),
                      onChanged: (String Value) {
                        try {
                          debugPrint("clicked");
                        } catch (exception) {

                        }
                      },

                    ),
                  ),
                  Container(
                    width:150,
                    height:100,
                    child:  TextField(
                      keyboardType:
                      TextInputType.numberWithOptions(decimal: true),
                      style: TextStyle(color: Colors.blueAccent),
                      decoration: InputDecoration(
                          prefixText: "height:"),
                      onChanged: (String Value) {
                        try {
                          debugPrint("clicked");
                        } catch (exception) {

                        }
                      },

                    ),
                  ),



                ],
              ),

            ],
          )
        )
    );
  }
}



