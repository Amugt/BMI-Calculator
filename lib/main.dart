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
  double bmiresult = 0;
  String description = "";
  final _heightinput = TextEditingController();
  final _weightinput = TextEditingController();



  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI calculator"),
          centerTitle: true,
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: Container(
            padding: EdgeInsets.only(top: 20),
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      width: 140,
                      child: TextField(
                        controller: _heightinput,
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w300,
                          color: Colors.blueAccent,
                        ),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Height",
                            hintStyle: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w300,
                                color: Colors.blueGrey.withOpacity(.9))),
                      ),
                    ),
                    Container(
                      width: 140,
                      child: TextField(
                        controller: _weightinput,
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w300,
                          color: Colors.blueAccent,
                        ),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "weight",
                            hintStyle: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w300,
                                color: Colors.blueGrey.withOpacity(.9))),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: calculate,
                  child: Text(
                    "Calculate",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Text(
                    bmiresult.toStringAsFixed(2),
                    style: TextStyle(
                      fontSize: 70,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Text(
                    description.toString(),
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ],
            )));
  }

  void calculate() {
    final weight = double.tryParse(_weightinput.text);

    final height = double.tryParse(_heightinput.text);

    setState(() {
      if (weight != null && height != null) {
        bmiresult = weight / (height * height);
        if (bmiresult <= 18.5) description = "Underweight";
        else if (bmiresult <= 25 && bmiresult>=18.5)  description = "Healthy";
          else if (bmiresult >= 25 && bmiresult<= 30)  description = "Overweight";
            else if (bmiresult>=30)  description = "Obesity";
      }
    });
  }
}
