import 'package:flutter/material.dart';
import '../DataModel/Book.dart';
import '../Components/BookCard.dart';

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
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('ObjectListWithCard(Book List)'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: bookList.map((item) => BookAndAuthorCard(
          bookItem: item,
          delete: () {
            setState(() {
              bookList.remove(item);
            });
          },
        )).toList(),
      ),
    );
  }
}
