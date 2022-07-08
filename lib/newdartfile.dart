

import 'package:flutter/material.dart';

class bill extends StatefulWidget {


  @override
  _billState createState() => _billState();
}

class _billState extends State<bill> {


  bool t1=false;
  bool c1=false;
  bool b1=false;

  bool p1=false;
  bool soop=false;
  int  i=0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(

    appBar: AppBar(title: Text("HOTAL MENU"),centerTitle: true,),
      body: Column(
        children: [

          Row(
            children: [
              Text("Breakfast",style: TextStyle(fontSize: 30),)

            ],
          ),
          Row(
            children: [
              Text("TEA    20/-",style: TextStyle(fontSize: 20),),
              Checkbox(value: t1, onChanged: (value) {
                setState(() {
                  t1=value!;
                  alldeta(t1,20);
                  total();
                });

              },)
            ],
          ),
          Row(
            chil
            dren: [
              Text("Cofee    100/-",style: TextStyle(fontSize: 20),),
              Checkbox(value: c1, onChanged: (value) {
                setState(() {
                  c1=value!;


                  alldeta(c1,100);
                  total();

                });

              },)
            ],
          ),
          Row(
            children: [
              Text("Bread    180/-",style: TextStyle(fontSize: 20),),
              Checkbox(value: b1, onChanged: (value) {
                setState(() {
                  b1=value!;

                  alldeta(b1,180);
                  total();
                });

              },)
            ],
          ),
          Row(
            children: [
              Text("Dinner",style: TextStyle(fontSize: 30),),

            ],
          ),
          Row(
            children: [
              Text("Pizza  200/-",style: TextStyle(fontSize: 20),),
              Checkbox(value: p1, onChanged: (value) {
                setState(() {
                  p1=value!;

                  alldeta(p1,200);
                  total();
                });

              },)
            ],
          ),
          Row(
            children: [
              Text("soup 100/-",style: TextStyle(fontSize: 20),),
              Checkbox(value: soop, onChanged: (value) {
                setState(() {
                  soop=value!;

                  alldeta(soop,100);
                  total();
                });


              },)
            ],
          ),
          Row(
            children: [
              Text("Total Amount=${ammount}"),
            ],
          ),


        ],

    ),
    );
  }
 int ammount=0;

  void alldeta(bool status, int i) {
    setState(() {

      if( status==true)
        {

          ammount=ammount+i;

        }

      else
      {

        ammount=ammount-i;
      }
    });
  }

  void total() {
    print(ammount);
  }
}
