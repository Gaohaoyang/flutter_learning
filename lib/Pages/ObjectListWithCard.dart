import 'package:flutter/material.dart';
import '../DataModel/Book.dart';

class ObjectListWithCard extends StatefulWidget {
  const ObjectListWithCard({Key? key}) : super(key: key);

  @override
  State<ObjectListWithCard> createState() => _ObjectListWithCardState();
}

class _ObjectListWithCardState extends State<ObjectListWithCard> {

  List<Book> bookList = [
    Book(
      name: 'JavaScript: The Definitive Guide (7th Edition)',
      author: 'David Flanagan'
    ),
    Book(
      name: 'Learning Three.js:The JavaScript 3D Library for WebGL',
      author: 'Jos Dirksen'
    ),
    Book(
      name: 'CSS in Depth',
      author: 'Keith J. Grant'
    ),
    Book(
      name: 'How JavaScript Works',
      author: 'Douglas Crockford'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ObjectListWithCard(Book List)'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: bookList.map((item) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.name,
                style: const TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(item.author),
                ],
              ),
              const SizedBox(height: 40)
            ],
          )).toList(),
        ),
      ),
    );
  }
}
