import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        title: Text('Flutter Practicle'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  debugPrint('Button Pressed');
                },
                child: Text('Press')),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.favorite,
                  size: 70,
                  color: Colors.red,
                ),
                Icon(
                  Icons.audiotrack_outlined,
                  size: 70,
                  color: Colors.black,
                ),
                Icon(
                  Icons.beach_access,
                  size: 70,
                  color: Colors.green,
                ),
                Icon(
                  Icons.cloud_outlined,
                  size: 70,
                  color: Colors.blue,
                ),
              ],
            ),
            const SizedBox(height: 20),
            Image.network(
              'https://cdn.mos.cms.futurecdn.net/PBpaPfht3TSS2rSg5ezHE-1200-80.jpg',
            ),

            const SizedBox(height: 20),
            Image.asset('images/pic.jpg'),
          ],
        ),
      ),
    );
  }
}
