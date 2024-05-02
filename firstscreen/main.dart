import 'package:flutter/material.dart';

import 'TabScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      home: FirstSrceen(),
    );
  }
}

class FirstSrceen extends StatelessWidget {
  const FirstSrceen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Get Started'),
        backgroundColor: Colors.orange.shade600,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.favorite,
                size: 60,
                color: Colors.orange,
              ),
              Icon(
                Icons.favorite,
                size: 60,
                color: Colors.orange,
              ),
              Icon(
                Icons.favorite,
                size: 60,
                color: Colors.orange,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Image.asset(
              'images/getstarted.jpg',
              width: 400,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.favorite,
                size: 60,
                color: Colors.orange,
              ),
              Icon(
                Icons.favorite,
                size: 60,
                color: Colors.orange,
              ),
              Icon(
                Icons.favorite,
                size: 60,
                color: Colors.orange,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SecoundSreen()),
              );
            },
            child: const Text('Get Started'),
          ),
        ],
      ),
    );
  }
}
