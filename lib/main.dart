import 'package:flutter/material.dart';

import 'newdartfile.dart';

void main() {
  runApp(MaterialApp(
    home: bill(),
  ));
}

class MyAPPP extends StatefulWidget {
  const MyAPPP({Key? key}) : super(key: key);

  @override
  _MyAPPPState createState() => _MyAPPPState();
}

class _MyAPPPState extends State<MyAPPP> {
  String gender = "male";
  bool check=false;
  bool check1=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Text("Male"),
              Radio(
                value: "male",
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender =value.toString();
                  });
                },
              )
            ],
          ),
          Row(
            children: [
              Text("Female"),
              Radio(
                value: "female",
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender =value.toString();
                  });
                },
              )
            ],
          ),
          Row(
            children: [
              Text("rohit"),
              Checkbox(value: check, onChanged: (value) {

                setState(() {
                  check=value!;
                });

              },)

            ],
          ),
          Row(
            children: [
              Text("sahil"),
              Checkbox(value: check1, onChanged: (value) {

                setState(() {
                  setState(() {
                    check1=value!;
                  });
                });

              },)

            ],
          ),

        ],
      ),
    );
  }
}
