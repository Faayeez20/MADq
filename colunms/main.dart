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

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column and Rows'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.favorite,
                  size: 70,
                  color: Colors.red,
                ),
                Icon(
                  Icons.beach_access,
                  size: 70,
                  color: Colors.green,
                ),
                Icon(
                  Icons.music_note,
                  size: 70,
                  color: Colors.black,
                ),
                Icon(
                  Icons.cloud_queue_outlined,
                  size: 70,
                  color: Colors.blue,
                ),
              ],
            ),
            const Divider(
              height: 10,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'images/image.jpg',
                  width: 200,
                  height: 300,
                ),
                ElevatedButton(
                    onPressed: () {
                      debugPrint('Row Button Pressed');
                    },
                    child: const Text('Row Button')),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              height: 10,
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Image.asset(
                  'images/image1.jpg',
                  width: 400,
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    debugPrint('Column Button');
                  },
                  child: const Text('Column Button'),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  height: 10,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
