import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: SizedBox(
        height: double.infinity,
        child: ListView(scrollDirection: Axis.vertical, children: [
          SizedBox(
            height: 100.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.amber[600],
                  child: const Center(child: Text('Entry A')),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.amber[500],
                  child: const Center(child: Text('Entry B')),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.amber[100],
                  child: const Center(child: Text('Entry C')),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.green[100],
                  child: const Center(child: Text('Entry C')),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue[100],
                  child: const Center(child: Text('Entry C')),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
