import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(body: Calculator()),
    ),
  );
}

class Calculator extends StatefulWidget {
  @override
  CalculatorState createState() => CalculatorState();
}

@override
class CalculatorState extends State<Calculator> {
  String num1 = "";
  String operation = "";
  double fullNumber = 0;
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text("$num1"),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        ElevatedButton(
            onPressed: () {
              ac();
            },
            child: Text("AC")),
        ElevatedButton(
            onPressed: () {
              percent();
            },
            child: Text("%")),
        ElevatedButton(
            onPressed: () {
              division();
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.black12),
            ),
            child: Text("/")),
      ]),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        ElevatedButton(
            onPressed: () {
              enterNumber("7");
            },
            child: Text("7")),
        ElevatedButton(
            onPressed: () {
              enterNumber("8");
            },
            child: Text("8")),
        ElevatedButton(
            onPressed: () {
              enterNumber("9");
            },
            child: Text("9")),
        ElevatedButton(
            onPressed: () {
              multiply();
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.black12),
            ),
            child: Text("X")),
      ]),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        ElevatedButton(
            onPressed: () {
              enterNumber("4");
            },
            child: Text("4")),
        ElevatedButton(
            onPressed: () {
              enterNumber("5");
            },
            child: Text("5")),
        ElevatedButton(
            onPressed: () {
              enterNumber("6");
            },
            child: Text("6")),
        ElevatedButton(
            onPressed: () {
              subtraction();
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.black12),
            ),
            child: Text("-")),
      ]),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        ElevatedButton(
            onPressed: () {
              enterNumber("1");
            },
            child: Text("1")),
        ElevatedButton(
            onPressed: () {
              enterNumber("2");
            },
            child: Text("2")),
        ElevatedButton(
            onPressed: () {
              enterNumber("3");
            },
            child: Text("3")),
        ElevatedButton(
            onPressed: () {
              addition();
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.black12),
            ),
            child: Text("+")),
      ]),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        ElevatedButton(
            onPressed: () {
              setState(() {
                enterNumber("0");
              });
            },
            child: Text("0")),
        ElevatedButton(
            onPressed: () {
              setState(() {
                enterNumber(".");
              });
            },
            child: Text(".")),
        ElevatedButton(
            onPressed: () {
              equal();
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.black12),
            ),
            child: Text("=")),
      ]),
    ]);
  }
  void enterNumber(String enteredNum){
    setState(() {
      num1 += enteredNum;
    });
  }
  void ac(){
    setState(() {
      operation = "";
      num1 = "";
    });
  }
  void percent(){
    setState(() {
      fullNumber = double.parse(num1);
      fullNumber /= 100;
      num1 = fullNumber.toString();
    });
  }
  void multiply(){
    setState(() {
      if (num1 != "") {
        fullNumber = double.parse(num1);
      } else if (num1 == "-") {
        num1 = "";
      }
      num1 = "";
      operation = "X";
    });
  }
  void subtraction(){
    setState(() {
      if (num1 == "-") {
        num1 = "-";
      } else if (num1 == "") {
        num1 = "-";
      } else {
        fullNumber = double.parse(num1);
        num1 = "";
      }
      if (operation == "X") {
        operation = "X";
      } else {
        operation = "-";
      }
    });
  }
  void division(){
    setState(() {
      if (num1 != "") {
        fullNumber = double.parse(num1);
      }
      num1 = "";
      operation = "/";
    });
  }
  void addition(){
    setState(() {
      if (num1 != "") {
        fullNumber = double.parse(num1);
      } else if (num1 == "-") {
        num1 = "";
      }
      num1 = "";
      operation = "+";
    });
  }
  void equal(){
    setState(() {
      switch (operation) {
        case "X":
          fullNumber *= double.parse(num1);
          num1 = fullNumber.toString();
        case "-":
          fullNumber -= double.parse(num1);
          num1 = fullNumber.toString();
        case "/":
          fullNumber /= double.parse(num1);
          num1 = fullNumber.toString();
        case "+":
          fullNumber += double.parse(num1);
          num1 = fullNumber.toString();
      }
    });
  }
}
