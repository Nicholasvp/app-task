import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/stars.dart';

class Task extends StatefulWidget {
  const Task({
    super.key,
    required this.title,
    required this.difficultLevel,
  });
  final String title;
  final int difficultLevel;

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  var difficult = 1;
  var level = 0.0;
  var counter = 0;

  void incrementLevel() {
    level += 0.1;
    counter++;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 360,
            height: 100,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 80,
                    height: 120,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://yt3.googleusercontent.com/ytc/AL5GRJVFUbrqLgTKs3qvoiGiZDvJHXkB_pzHwyussmGX=s900-c-k-c0x00ffffff-no-rj'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        widget.title,
                        style: const TextStyle(fontSize: 26),
                      ),
                      Stars(
                        difficult: widget.difficultLevel,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 50,
                      width: 50,
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              incrementLevel();
                            });
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Icon(Icons.arrow_drop_up),
                              Text(
                                "UP",
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Stack(
            children: [
              Container(
                width: 360,
                height: 50,
                color: Colors.blue,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 5,
                      width: 250,
                      child: LinearProgressIndicator(
                        value: level,
                        color: Colors.amber,
                      ),
                    ),
                    Text(
                      'Nível: $counter',
                      style: const TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
