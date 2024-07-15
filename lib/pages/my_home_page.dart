import 'package:flutter/material.dart';
import 'package:sandbox_app/widgets/draggable_card.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text(title),
            backgroundColor: Colors.orange,
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.book),
                ),
                Tab(
                  icon: Icon(Icons.ac_unit),
                )
              ],
            ),
          ),
          body: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    final snackbar = SnackBar(
                      content: const Text('Welcome！！'),
                      action: SnackBarAction(label: 'Here', onPressed: () {}),
                      backgroundColor: Colors.pink,
                    );

                    ScaffoldMessenger.of(context).showSnackBar(snackbar);
                  },
                  child: Text('show snackbar')),
              DraggableCard(child: FlutterLogo(size: 128))
            ],
          ),
        ),
      ),
    );
  }
}
