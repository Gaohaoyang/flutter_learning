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

  Widget cardTemplate(Book bookItem) {
    return Card(
      margin: const EdgeInsets.fromLTRB(18, 18, 18, 0),
      color: Colors.grey[100],
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 5, 12, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              bookItem.name,
              style: const TextStyle(
                fontSize: 18,
                height: 1.6
              ),
            ),
            SizedBox(height: 10),
            Text(
              bookItem.author
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('ObjectListWithCard(Book List)'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: bookList.map((e) => cardTemplate(e)).toList(),
      ),
    );
  }
}
