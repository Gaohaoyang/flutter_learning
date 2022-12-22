import 'package:flutter/material.dart';

class SimpleList extends StatefulWidget {
  const SimpleList({Key? key}) : super(key: key);

  @override
  State<SimpleList> createState() => _SimpleListState();
}

class _SimpleListState extends State<SimpleList> {
  List<int> list = [1, 2, 3, 4, 5, 6, 7];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple List'),
        centerTitle: true,
      ),
      body: Column(
        children: list.map((item) => Text(
          '$item'
        )).toList(),
      ),
    );
  }
}
