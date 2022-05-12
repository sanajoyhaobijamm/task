import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const Testing(),
    );
  }
}

class Testing extends StatefulWidget {
  const Testing({Key? key}) : super(key: key);

  @override
  State<Testing> createState() => _TestingState();
}

List<String> name = [
  "Task 1",
  "Task 2",
  "Task 3",
  "Task 4",
];

class _TestingState extends State<Testing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Dashboard'),
          backgroundColor: Colors.blue,
        ),
        body: Column(children: [
          Center(
            child: Container(
              child: const Text(
                'Task Title',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.blue,
                ),
              ),
              height: 100,
              width: 800,
              color: Colors.teal,
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: name.length,
            itemBuilder: (c, i) {
              return CardItem(
                name: name[i],
              );
            },
          )
        ]));
  }
}

class CardItem extends StatelessWidget {
  const CardItem({
    Key? key,
    required this.name,
  }) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(name),
      padding: const EdgeInsets.all(0.0),
      height: 150,
      width: 400,
      color: Colors.teal,
    );
  }
}
