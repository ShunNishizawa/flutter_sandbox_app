import 'package:flutter/material.dart';
import 'package:sandbox_app/router.dart';

class GoPage extends StatelessWidget {
  const GoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GoPage'),
        backgroundColor: Colors.orange,
        leading: Builder(builder: (context) {
          return IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.orange,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
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
                Navigator.of(context).push(router3());
              },
              child: const Text('parallax'),
            ),
          ],
        ),
      ),
    );
  }
}
