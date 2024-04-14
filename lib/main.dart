import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(body: Calculator()),
    ),
  );
}

class Calculator extends StatefulWidget {

  CalculatorState createState() => CalculatorState();
}

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
              setState(() {
                operation = "";
                num1 = "";
              });
            },
            child: Text("AC")),
        ElevatedButton(
            onPressed: () {
              setState(() {
                fullNumber = double.parse(num1);
                fullNumber /= 100;
                num1 = fullNumber.toString();
              });
            },
            child: Text("%")),
        ElevatedButton(
            onPressed: () {
              setState(() {
                if (num1 != "") {
                  fullNumber = double.parse(num1);
                }
                num1 = "";
                operation = "/";
              });
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.black12),
            ),
            child: Text("/")),
      ]),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        ElevatedButton(
            onPressed: () {
              setState(() {
                num1 += "7";
              });
            },
            child: Text("7")),
        ElevatedButton(
            onPressed: () {
              setState(() {
                num1 += "8";
              });
            },
            child: Text("8")),
        ElevatedButton(
            onPressed: () {
              setState(() {
                num1 += "9";
              });
            },
            child: Text("9")),
        ElevatedButton(
            onPressed: () {
              setState(() {
                if (num1 != "") {
                  fullNumber = double.parse(num1);
                } else if (num1 == "-") {
                  num1 = "";
                }
                num1 = "";
                operation = "X";
              });
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.black12),
            ),
            child: Text("X")),
      ]),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        ElevatedButton(
            onPressed: () {
              setState(() {
                num1 += "4";
              });
            },
            child: Text("4")),
        ElevatedButton(
            onPressed: () {
              setState(() {
                num1 += "5";
              });
            },
            child: Text("5")),
        ElevatedButton(
            onPressed: () {
              setState(() {
                num1 += "6";
              });
            },
            child: Text("6")),
        ElevatedButton(
            onPressed: () {
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
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.black12),
            ),
            child: Text("-")),
      ]),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        ElevatedButton(
            onPressed: () {
              setState(() {
                num1 += "1";
              });
            },
            child: Text("1")),
        ElevatedButton(
            onPressed: () {
              setState(() {
                num1 += "2";
              });
            },
            child: Text("2")),
        ElevatedButton(
            onPressed: () {
              setState(() {
                num1 += "3";
              });
            },
            child: Text("3")),
        ElevatedButton(
            onPressed: () {
              setState(() {
                if (num1 != "") {
                  fullNumber = double.parse(num1);
                } else if (num1 == "-") {
                  num1 = "";
                }
                num1 = "";
                operation = "+";
              });
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
                num1 += "0";
              });
            },
            child: Text("0")),
        ElevatedButton(
            onPressed: () {
              setState(() {
                num1 += ".";
              });
            },
            child: Text(".")),
        ElevatedButton(
            onPressed: () {
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
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.black12),
            ),
            child: Text("=")),
      ]),
    ]);
  }
}
