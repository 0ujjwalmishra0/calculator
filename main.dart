import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: CalcPage(),
    debugShowCheckedModeBanner: false,
      routes: <String,WidgetBuilder>{
        "/CalcPage2": (BuildContext context ) => CalcPage2()
      }

    ));


class CalcPage extends StatefulWidget {
  @override
  _CalcPageState createState() => _CalcPageState();
}

class _CalcPageState extends State<CalcPage> {



  Widget button(String s,color) {
    return Expanded(
      child: FlatButton(onPressed: (){},
          shape: Border(),
        padding:  EdgeInsets.only(left: 25.0,right: 25.0,top: 30.0,bottom: 30.0),
        textColor: Colors.white,
          color: Colors.black,
        child: Text(s,
          style: TextStyle(fontSize: 17),)
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Calculator"),
      ),
      body: Container(

        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 15,right: 15,top: 133,bottom: 10),
              alignment: Alignment.bottomRight,
                child: Text("0",style: TextStyle(fontSize: 50),)
            ),
            Expanded(child: Divider()),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    button("C",Colors.black),
                    button("",Colors.black),


                    button("%",Colors.black),
                    //button("/",Colors.lightGreen)
                    Expanded(
                      child: FlatButton(onPressed: (){},
                          shape: Border(),
                          padding:  EdgeInsets.only(left: 25.0,right: 25.0,top: 30.0,bottom: 30.0),
                          textColor: Colors.white,
                          color: Colors.green,
                          child: Text("÷",
                            style: TextStyle(fontSize: 17),)
                      ),
                    ),

                  ],
                ),
                Row(
                  children: <Widget>[

                    button("7",Colors.black),
                    button("8",Colors.black),
                    button("9",Colors.black),
                    //button("X",Colors.lightGreen)
                    Expanded(
                      child: FlatButton(onPressed: (){},
                          shape: Border(),
                          padding:  EdgeInsets.only(left: 25.0,right: 25.0,top: 30.0,bottom: 30.0),
                          textColor: Colors.white,
                          color: Colors.green,
                          child: Text("X",
                            style: TextStyle(fontSize: 17),)
                      ),
                    ),

                  ],
                ),
                Row(
                  children: <Widget>[
                    button("4",Colors.black),
                    button("5",Colors.black),
                    button("6",Colors.black),
                    //button("-",Colors.lightGreen)
                    Expanded(
                      child: FlatButton(onPressed: (){},
                          shape: Border(),
                          padding:  EdgeInsets.only(left: 25.0,right: 25.0,top: 30.0,bottom: 30.0),
                          textColor: Colors.white,
                          color: Colors.green,
                          child: Text("-",
                            style: TextStyle(fontSize: 17),)
                      ),
                    ),

                  ],
                ),
                Row(
                  children: <Widget>[
                    button("1",Colors.black),
                    button("2",Colors.black),
                    button("3",Colors.black),
                   // button("+",Colors.lightGreen)
                    Expanded(
                      child: FlatButton(onPressed: (){},
                          shape: Border(),
                          padding:  EdgeInsets.only(left: 25.0,right: 25.0,top: 30.0,bottom: 30.0),
                          textColor: Colors.white,
                          color: Colors.green,
                          child: Text("+",
                            style: TextStyle(fontSize: 17),)
                      ),
                    ),

                  ],
                ),
                Row(
                  children: <Widget>[
                    //button("P",Colors.black),
                    Expanded(
                      child: FlatButton(onPressed: (){ Navigator.of(context).pushNamed("/CalcPage2");},
                          shape: Border(),
                          padding:  EdgeInsets.only(left: 25.0,right: 25.0,top: 30.0,bottom: 30.0),
                          textColor: Colors.green,
                          color: Colors.black,
                          child: Text("P",
                            style: TextStyle(fontSize: 17),

                          )
                      ),
                    ),

                    button("0",Colors.black),
                    button(".",Colors.black),
                   //button("=",Colors.lightGreen)

                    Expanded(
                      child: FlatButton(onPressed: (){},
                          shape: Border(),
                          padding:  EdgeInsets.only(left: 25.0,right: 25.0,top: 30.0,bottom: 30.0),
                          textColor: Colors.white,
                          color: Colors.green,
                          child: Text("=",
                            style: TextStyle(fontSize: 17),)
                      ),
                    ),

                  ],
                ),



              ],
            ),
          ],
        ),


        ),
    );
  }
}


class CalcPage2 extends StatefulWidget {
  @override
  _CalcPage2State createState() => _CalcPage2State();
}

class _CalcPage2State extends State<CalcPage2> {

    Widget button(String s,color) {
      return Expanded(
        child: FlatButton(onPressed: (){},
            shape: Border(),
            padding:  EdgeInsets.only(left: 15.0,right: 15.0,top: 15.0,bottom: 15.0),
            textColor: Colors.white,
            color: Colors.black,
            child: Text(s,
              style: TextStyle(fontSize: 17),)
        ),
      );
    }
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Calculator"),
        ),
        body: Container(

          child: Column(
            children: <Widget>[
              Container(
                  padding: EdgeInsets.only(left: 15.0,right: 15.0,top: 178.0,bottom: 15.0),
                  alignment: Alignment.bottomRight,
                  child: Text("0",style: TextStyle(fontSize: 50),)
              ),
              Expanded(child: Divider()),
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      button("x^y",Colors.black),
                      button("e^x",Colors.black),
                      button("sin",Colors.black),
                      button("cos",Colors.black),
                      //button("/",Colors.lightGreen)
                      Expanded(
                        child: FlatButton(onPressed: (){},
                            shape: Border(),
                            padding:  EdgeInsets.only(left: 15.0,right: 15.0,top: 15.0,bottom: 15.0),
                            textColor: Colors.white,
                            color: Colors.green,
                            child: Text("tan",
                              style: TextStyle(fontSize: 17),)
                        ),
                      ),


                    ],
                  ),
                  Row(
                    children: <Widget>[

                      button("√x",Colors.black),
                      button("log",Colors.black),
                      button("ln",Colors.black),
                      button("(",Colors.black),
                      //button("X",Colors.lightGreen)
                      Expanded(
                        child: FlatButton(onPressed: (){},
                            shape: Border(),
                            padding:  EdgeInsets.only(left: 15.0,right: 15.0,top: 15.0,bottom: 15.0),
                            textColor: Colors.white,
                            color: Colors.green,
                            child: Text(")",
                              style: TextStyle(fontSize: 17),)
                        ),
                      ),


                    ],
                  ),
                  Row(
                    children: <Widget>[
                      button("3√x",Colors.black),
                      button("C",Colors.black),
                      button("b",Colors.black),
                      button("%",Colors.black),
                      //button("-",Colors.lightGreen)
                      Expanded(
                        child: FlatButton(onPressed: (){},
                            shape: Border(),
                            padding:  EdgeInsets.only(left: 15.0,right: 15.0,top: 15.0,bottom: 15.0),
                            textColor: Colors.white,
                            color: Colors.green,
                            child: Text("÷",
                              style: TextStyle(fontSize: 17),)
                        ),
                      ),


                    ],
                  ),
                  Row(
                    children: <Widget>[
                      button("x!",Colors.black),
                      button("7",Colors.black),
                      button("8",Colors.black),
                      button("9",Colors.black),
                      // button("+",Colors.lightGreen)
                      Expanded(
                        child: FlatButton(onPressed: (){},
                            shape: Border(),
                            padding:  EdgeInsets.only(left: 15.0,right: 15.0,top: 15.0,bottom: 15.0),
                            textColor: Colors.white,
                            color: Colors.green,
                            child: Text("×",
                              style: TextStyle(fontSize: 17),)
                        ),
                      ),


                    ],
                  ),


                  Row(
                    children: <Widget>[
                      button("1/x",Colors.black),
                      button("4",Colors.black),
                      button("5",Colors.black),
                      button("6",Colors.lightGreen),
                      Expanded(
                        child: FlatButton(onPressed: (){},
                            shape: Border(),
                            padding:  EdgeInsets.only(left: 15.0,right: 15.0,top: 15.0,bottom: 15.0),
                            textColor: Colors.white,
                            color: Colors.green,
                            child: Text("-",
                              style: TextStyle(fontSize: 17),)
                        ),
                      )

                ],
              ),
                  Row(
                    children: <Widget>[
                      button("π",Colors.black),
                      button("1",Colors.black),
                      button("2",Colors.black),
                      button("3",Colors.lightGreen),
                      Expanded(
                        child: FlatButton(onPressed: (){},
                            shape: Border(),
                            padding:  EdgeInsets.only(left: 15.0,right: 15.0,top: 15.0,bottom: 15.0),
                            textColor: Colors.white,
                            color: Colors.green,
                            child: Text("+",
                              style: TextStyle(fontSize: 17),)
                        ),
                      )
                    ],
                  ),

                  Row(
                    children: <Widget>[
                      //button("P",Colors.black),
                      Expanded(
                        child: FlatButton(onPressed: (){ Navigator.of(context).pushNamed("/");},
                            shape: Border(),
                            padding:  EdgeInsets.only(left: 15.0,right: 15.0,top: 15.0,bottom: 15.0),
                            textColor: Colors.green,
                            color: Colors.black,
                            child: Text("P",
                              style: TextStyle(fontSize: 17),

                            )
                        ),
                      ),

                      button("e",Colors.black),
                      button("0",Colors.black),
                      button(".",Colors.black),
                      //button("=",Colors.lightGreen)

                      Expanded(
                        child: FlatButton(onPressed: (){},
                            shape: Border(),
                            padding:  EdgeInsets.only(left: 15.0,right: 15.0,top: 15.0,bottom: 15.0),
                            textColor: Colors.white,
                            color: Colors.green,
                            child: Text("=",
                              style: TextStyle(fontSize: 17),)
                        ),
                      ),

                    ],
                  ),
            ],
          ),


        ]
      ),
      ),
      );
    }
}

