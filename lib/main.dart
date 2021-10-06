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
  var username;
  var password;
  var first;
  var second;
  double result = 0;

  void clear() {
    setState(() {
      // first.clear;
      // second.clear;
      result = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'data:image/jpeg;base64,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'),
                  fit: BoxFit.fill),
            ),
            child: Column(
              children: [
                Opacity(
                  opacity: 0.7,
                  child: Card(
                    shadowColor: Colors.lightGreen,
                    color: Colors.white,
                    margin: EdgeInsets.fromLTRB(10, 40, 10, 0),
                    elevation: 10,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'First number',
                                ),
                                keyboardType: TextInputType.number,
                                onChanged: (val) => {
                                  first = val,
                                },
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Second number',
                                ),
                                keyboardType: TextInputType.number,
                                onChanged: (val) => {
                                  second = val,
                                },
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Ans is $result",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        result = double.parse(first) +
                                            double.parse(second);
                                      });
                                    },
                                    child: Text("Add"),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        result = double.parse(first) -
                                            double.parse(second);
                                      });
                                    },
                                    child: Text("Subtract"),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        result = double.parse(first) *
                                            double.parse(second);
                                      });
                                    },
                                    child: Text("Multiply"),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        result = int.parse(first) /
                                            int.parse(second);
                                      });
                                    },
                                    child: Text("Divide"),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              ElevatedButton(
                                onPressed: clear,
                                child: Text("Reset"),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
