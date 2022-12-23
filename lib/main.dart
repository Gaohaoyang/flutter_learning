import 'package:flutter/material.dart';
import './Pages/ExpandedDemo.dart';
import './Pages/NinjaCard.dart';
import './Pages/StatefulDemo.dart';
import './Pages/SimpleList.dart';
import './Pages/ObjectList.dart';

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
          ),
          ListTile(
            title: const Text('ObjectList(Book List)'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ObjectList())
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
