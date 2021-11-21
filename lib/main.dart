// ignore: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // ignore: non_constant_identifier_names

  String firstnum = '';
  String secondnum = '';
  bool change = false;
  double result = 0;

  Widget build(BuildContext context) {
    return MaterialApp(
      // color: Colors.yellow,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Calculator"),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'First Number',
                      style: TextStyle(fontSize: 30),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      firstnum,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Second Number',
                      style: TextStyle(fontSize: 30),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      secondnum,
                      style: TextStyle(fontSize: 30),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Text(
                      'Result',
                      style: TextStyle(fontSize: 30),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      result.toString(),
                      style: TextStyle(fontSize: 30),
                    ),
                  ],
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        change = !change;
                      });
                    },
                    child: Text('next number')),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (change == false)
                            secondnum += '1';
                          else
                            firstnum += '1';
                        });
                      },
                      child: Text('1'),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (change == false)
                            secondnum += '2';
                          else
                            firstnum += '2';
                        });
                      },
                      child: Text('2'),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (change == false)
                            secondnum += '3';
                          else
                            firstnum += '3';
                        });
                      },
                      child: Text('3'),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          firstnum = '';
                          secondnum = '';
                          result = 0;
                          change = true;
                        });
                      },
                      child: Text('AC'),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (change == false)
                            secondnum += '4';
                          else
                            firstnum += '4';
                        });
                      },
                      child: Text('4'),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (change == false)
                            secondnum += '5';
                          else
                            firstnum += '5';
                        });
                      },
                      child: Text('5'),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (change == false)
                            secondnum += '6';
                          else
                            firstnum += '6';
                        });
                      },
                      child: Text('6'),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          result =
                              double.parse(firstnum) + double.parse(secondnum);
                        });
                      },
                      child: Text('+'),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (change == false)
                            secondnum += '7';
                          else
                            firstnum += '7';
                        });
                      },
                      child: Text('7'),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (change == false)
                            secondnum += '8';
                          else
                            firstnum += '8';
                        });
                      },
                      child: Text('8'),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (change == false)
                            secondnum += '9';
                          else
                            firstnum += '9';
                        });
                      },
                      child: Text('9'),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          result =
                              double.parse(firstnum) - double.parse(secondnum);
                        });
                      },
                      child: Text('-'),
                    ),
                  ],
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (change == true) {
                              if (firstnum[0] == '-') {
                                firstnum = firstnum.substring(1);
                              } else {
                                firstnum = '-' + firstnum;
                              }
                            } else {
                              if (secondnum[0] == '-') {
                                secondnum = secondnum.substring(1);
                              } else {
                                secondnum = '-' + secondnum;
                              }
                            }
                          });
                        },
                        child: Text('+/-'),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (change == false)
                              secondnum += '0';
                            else
                              firstnum += '0';
                          });
                        },
                        child: Text('0'),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            result = double.parse(firstnum) *
                                double.parse(secondnum);
                          });
                        },
                        child: Text('*'),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            result = double.parse(firstnum) /
                                double.parse(secondnum);
                          });
                        },
                        child: Text('/'),
                      ),
                    ]),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
