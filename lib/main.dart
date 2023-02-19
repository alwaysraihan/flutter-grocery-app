// ignore_for_file: sized_box_for_whitespace

import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkMode = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: isDarkMode ? Colors.black : Colors.white,
        appBar: AppBar(
          title: const Text("Kinbo Grocery"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'lib/images/avocado.png',
                height: 100,
                width: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Hey! I am Raihan Sarkar",
                  style: TextStyle(
                      color: Colors.yellow[700],
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "I am a Code Magician",
                  style: TextStyle(
                      color: Colors.blue[700],
                      letterSpacing: 2,
                      fontWeight: FontWeight.w700,
                      fontSize: 20),
                ),
              ),
              Container(
                width: 120,
                child: const Divider(
                  height: 30,
                  color: Colors.grey,
                ),
              ),
              ElevatedButton(onPressed: () {}, child: const Text("Email Me"))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              isDarkMode=!isDarkMode;
            });
          },
          backgroundColor: Colors.yellow[700],
          child: const Icon(Icons.color_lens),
        ),
      ),
    );
  }
}
