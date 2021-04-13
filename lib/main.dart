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
  double height, weight, result;
  String status;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IMT',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Kalkulator Index Masa Tubuh'),
          backgroundColor: Colors.lightBlue[200],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Masukan tinggi badan anda (m)',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                onChanged: (value) {
                  height = double.parse(value);
                },
              ),
              Text(
                '\nMasukan berat badan anda (kg)',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                onChanged: (value) {
                  weight = double.parse(value);
                },
              ),
              FlatButton(
                color: Colors.lightBlue[100],
                child: Text(
                  'Hitung',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                onPressed: () {
                  setState(() {
                    result = weight / (height * height);
                    if (result < 18.5) {
                      status = "UnderWeight";
                    } else if (result < 24.99) {
                      status = "Normal";
                    } else if (result < 29.99) {
                      status = "OverWeight";
                    } else if (result < 34.99) {
                      status = "Obese class 1";
                    } else if (result < 39.99) {
                      status = "Obese class 2";
                    } else if (result < 40) {
                      status = "Obese class 3";
                    }
                  });
                },
              ),
              Text("\nHasilnya = ${result.toString()}\n Status anda = $status",
                  style: TextStyle(fontSize: 20))
            ],
          ),
        ),
      ),
    );
  }
}
