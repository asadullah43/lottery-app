import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

Random random = Random();
int x = 0;

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Lottery App',
              style: TextStyle(fontSize: 30),
            ),
          ),
          backgroundColor: const Color(0xff6AE792),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                'Lottery Number is 4',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            const SizedBox(height: 25),
            Container(
              height: 250,
              decoration: BoxDecoration(
                color: const Color(0xffCDEB8B),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: x == 4
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.done,
                            size: 60,
                            color: Colors.blue,
                          ),
                          const SizedBox(height: 15),
                          Text(
                            'Congratulation you have won the lottery \nyour number is $x',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          )
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.error,
                            size: 60,
                            color: Colors.red,
                          ),
                          const SizedBox(height: 15),
                          Text(
                            'Better Luck next time your number is $x \nTry Again',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          )
                        ],
                      ),
              ),
            )
          ],
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: FloatingActionButton(
            backgroundColor: const Color(0xff6AE792),
            onPressed: () {
              x = random.nextInt(10);
              setState(() {});
            },
            child: const Icon(
              Icons.refresh,
            ),
          ),
        ),
      ),
    );
  }
}
