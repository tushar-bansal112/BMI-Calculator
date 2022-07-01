import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  Results({this.bmiResult, this.bmiText, this.bmiFeedback});
  final String bmiResult;
  final String bmiText;
  final String bmiFeedback;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF111328),
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'YOUR RESULTS',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: Color(0xFF1D1E33),
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    bmiText,
                    style: TextStyle(
                      color: Color(0xFF24D876),
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0,
                    ),
                  ),
                  Text(
                    bmiResult,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 70.0,
                    ),
                  ),
                  Text(
                    bmiFeedback,
                    style: TextStyle(
                      fontSize: 22.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              child: Center(
                child: Text(
                  'RE-CALCULATE',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                  ),
                ),
              ),
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: 80.0,
            ),
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget cardchild;
  ReusableCard({this.colour, this.cardchild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardchild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
