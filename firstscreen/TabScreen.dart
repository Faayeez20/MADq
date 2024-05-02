// ignore: file_names
import 'package:flutter/material.dart';

class SecoundSreen extends StatelessWidget {
  const SecoundSreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabScreen'),
          backgroundColor: Colors.orange.shade600,
          centerTitle: true,
          bottom: const TabBar(tabs: [
            Tab(
              icon: Icon(
                Icons.tab,
                size: 30,
                color: Colors.white,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.tab,
                size: 30,
                color: Colors.white,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.tab,
                size: 30,
                color: Colors.white,
              ),
            ),
          ]),
        ),
        body: const TabBarView(children: [
          Center(
            child: Text('Tab 1 Content'),
          ),
          Center(
            child: Text('Tab 2 Content'),
          ),
          Center(
            child: Text('Tab 3 Content'),
          ),
        ]),
      ),
    );
  }
}
