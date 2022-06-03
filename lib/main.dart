import 'package:flutter/material.dart';

Container roundbox(
    {double width: 150,
    double height: 150,
    required Color bgcolor,
    required Color textcolor,
    required String text}) {
  return Container(
    child: Center(
        child: Text(
      text,
      style: TextStyle(
          color: textcolor, fontWeight: FontWeight.bold, fontSize: 14),
    )),
    width: width,
    margin: EdgeInsets.symmetric(horizontal: 10.0),
    height: height,
    decoration: BoxDecoration(
        color: bgcolor,
        borderRadius: BorderRadius.circular(30.0),
        border: Border.all(color: Colors.orange, width: 2)),
  );
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(width: double.infinity),
              SizedBox(
                height: 10,
              ),
              roundbox(
                  bgcolor: Colors.red,
                  textcolor: Colors.black,
                  text: "Square1"),
              SizedBox(
                height: 10,
              ),
              roundbox(
                  bgcolor: Colors.yellow,
                  textcolor: Colors.black,
                  text: "Square1"),
              SizedBox(
                height: 10,
              ),
              roundbox(
                  bgcolor: Colors.green,
                  textcolor: Colors.black,
                  text: "Square1"),
              SizedBox(
                height: 10,
              ),
              roundbox(
                  width: 200,
                  height: 200,
                  bgcolor: Colors.black,
                  textcolor: Colors.white,
                  text: "Square4"),
            ],
          ),
        ),
      ),
    ),
  );
}
