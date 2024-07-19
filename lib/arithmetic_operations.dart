import 'dart:math';

import 'package:flutter/material.dart';

class ArithmeticOperations extends StatefulWidget {
  const ArithmeticOperations({super.key});

  @override
  State<ArithmeticOperations> createState() => _ArithmeticOperationState();
}

class _ArithmeticOperationState extends State<ArithmeticOperations> {
  final TextEditingController number1 = TextEditingController();
  final TextEditingController number2 = TextEditingController();
  double result = 0;

  @override
  Widget build(BuildContext context) {
    
    const buttonStyle = ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.white),
                    foregroundColor: WidgetStatePropertyAll(Colors.black),
                    minimumSize:
                        WidgetStatePropertyAll(Size(double.infinity, 50)),
                    side: WidgetStatePropertyAll(BorderSide(color: Colors.black, width: 1)),
                  );

    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: const Text(
          "Arithmetic Operations",
          style: TextStyle(
          color: Colors.white,
          ),
        ),
        backgroundColor: Colors.lightBlue,
        elevation: 5,
      ),
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: Text(
                "Result: $result",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: TextField(
                controller: number1,
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
                decoration: InputDecoration(
                    hintText: "Please enter the first number",
                    hintStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.black, width: 2.0),
                      borderRadius: BorderRadius.circular(15),
                    )),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: TextField(
                controller: number2,
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
                decoration: InputDecoration(
                    hintText: "Please enter the second number",
                    hintStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.black, width: 2.0),
                      borderRadius: BorderRadius.circular(15),
                    )),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
              margin: const EdgeInsets.fromLTRB(20, 40, 20, 0),
              child: TextButton(
                  onPressed: () {
                    debugPrint("Addition Button Clicked");
                    setState(() {
                      result = double.parse(number1.text) + double.parse(number2.text);
                    });
                  },
                  style: buttonStyle,
                  child: const Text("Addition")),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: TextButton(
                  onPressed: () {
                    debugPrint("Subtraction Button Clicked");
                    setState(() {
                      result = double.parse(number1.text) - double.parse(number2.text);
                    });
                  },
                  style: buttonStyle,
                  child: const Text("Subtraction")),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: TextButton(
                  onPressed: () {
                    debugPrint("Multiply Button Clicked");
                    setState(() {
                      result = double.parse(number1.text) * double.parse(number2.text);
                    });
                  },
                  style: buttonStyle,
                  child: const Text("Multiply")),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: TextButton(
                  onPressed: () {
                    debugPrint("Divide Button Clicked");
                    setState(() {
                      result = double.parse(number1.text) / double.parse(number2.text);
                    });
                  },
                  style: buttonStyle,
                  child: const Text("Divide")),
            ),
          ],
        ),
      ),
    );
  }
}
