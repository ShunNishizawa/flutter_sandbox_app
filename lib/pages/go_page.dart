import 'package:flutter/material.dart';
import 'package:sandbox_app/router.dart';

class GoPage extends StatelessWidget {
  const GoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GoPage'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(router());
              },
              child: const Text('Go!'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(router2());
              },
              child: const Text('Home2!'),
            ),
          ],
        ),
      ),
    );
  }
}
