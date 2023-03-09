import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var difficult = 1;
  var level = 0.0;

  void incrementLevel() {
    level += 0.1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text(widget.title),
        leading: const Icon(Icons.school_rounded),
      ),
      body: Padding(
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
                        const Text(
                          'Estudar Flutter',
                          style: TextStyle(fontSize: 26),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: (difficult >= 1)
                                  ? Colors.blue
                                  : Colors.blue.shade100,
                            ),
                            Icon(
                              Icons.star,
                              color: (difficult >= 2)
                                  ? Colors.blue
                                  : Colors.blue.shade100,
                            ),
                            Icon(
                              Icons.star,
                              color: (difficult >= 3)
                                  ? Colors.blue
                                  : Colors.blue.shade100,
                            ),
                            Icon(
                              Icons.star,
                              color: (difficult >= 4)
                                  ? Colors.blue
                                  : Colors.blue.shade100,
                            ),
                            Icon(
                              Icons.star,
                              color: (difficult >= 5)
                                  ? Colors.blue
                                  : Colors.blue.shade100,
                            ),
                          ],
                        )
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
                  alignment: Alignment.center,
                  width: 360,
                  height: 50,
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: LinearProgressIndicator(
                      value: level,
                      color: Colors.amber,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
