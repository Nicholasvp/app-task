import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/form_page.dart';

import '../components/task.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text(widget.title),
        leading: const Icon(Icons.school_rounded),
      ),
      body: Column(children: [
        const Task(
          title: "Flutter",
          difficultLevel: 1,
        ),
        const Task(
          title: "Run",
          difficultLevel: 3,
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const FormPage()));
            },
            child: const Icon(Icons.add)),
      ]),
    );
  }
}
