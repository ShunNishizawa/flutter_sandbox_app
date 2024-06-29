import 'package:flutter/material.dart';
import 'package:sandbox_app/widgets/draggable_card.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: DraggableCard(child: FlutterLogo(size: 128)),
    );
  }
}
