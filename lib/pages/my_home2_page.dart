import 'package:flutter/material.dart';

class MyHome2Page extends StatefulWidget {
  const MyHome2Page({super.key});

  @override
  State<MyHome2Page> createState() => _MyHome2PageState();
}

class _MyHome2PageState extends State<MyHome2Page> {
  @override
  Widget build(BuildContext context) {
    bool _visible = true;
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyHome2Page'),
      ),
      body: Center(
        child: AnimatedOpacity(
          opacity: _visible ? 1.0 : 0.0,
          duration: const Duration(microseconds: 500),
          child: Container(
            width: 200,
            height: 200,
            color: Colors.orange,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // call setState. This tells Flutter to rebuild the UI
          setState(() {
            _visible = !_visible;
          });
        },
        tooltip: 'Toggle Opacity',
        child: const Icon(Icons.flip),
      ),
    );
  }
}
