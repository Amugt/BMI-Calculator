import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
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
              ButtonBar(buttonHeight: 20,
              buttonMinWidth: 50,
              buttonTextTheme: Colors.black,
              children: <Widget>[
                Text("calculate")
              ],)

            ],
          )
        )
    );
  }
}



