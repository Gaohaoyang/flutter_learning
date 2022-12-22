import 'package:flutter/material.dart';
import 'package:flutter_learning/Pages/ExpandedDemo.dart';
import 'package:flutter_learning/Pages/NinjaCard.dart';
import 'package:flutter_learning/Pages/StatefulDemo.dart';
import 'package:flutter_learning/Pages/SimpleList.dart';

void main() {
  runApp(const MaterialApp(home: Home()));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Demos',
        ),
        centerTitle: true,
        // backgroundColor: Colors.red[600],
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Expanded'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ExpandedDemo())
              );
            },
          ),
          ListTile(
            title: const Text('NinjaId'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const NinjaCard())
              );
            },
          ),
          ListTile(
            title: const Text('Stateful Demo'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NinjaCardStatefulDemo())
              );
            },
          ),
          ListTile(
            title: const Text('SimpleList'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SimpleList())
              );
            },
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {print('clicked')},
        backgroundColor: Colors.red[600],
        child: const Text('click'),
      ),
    );
  }
}
