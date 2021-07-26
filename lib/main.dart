import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime? dateTime;
  DateTime now=DateTime.now();
  DateTime first=DateTime(2001);
  DateTime last=DateTime.now();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date Picker"),
      ),
      body: Center(
            child: FlatButton(
              onPressed:(){
                showDatePicker(
                    context: context,
                    initialDate: now,
                    firstDate: first,
                    lastDate: last).then((value){
                      setState(() {
                        dateTime=value;
                      });
                });
              } ,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Date Picker"),
                  if(dateTime!=null)Text("Date Time User: ${dateTime!.year}:${dateTime!.month}:${dateTime!.day}"),
                ],
              ),
            ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
