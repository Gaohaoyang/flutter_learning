import 'package:flutter/material.dart';
import '../DataModel/Book.dart';

class BookAndAuthorCard extends StatelessWidget {
  final Book bookItem;
  final void Function() delete;

  const BookAndAuthorCard({
    super.key,
    required this.bookItem,
    required this.delete,
  });

  @override
  Widget build(BuildContext context) {
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
            const SizedBox(height: 10),
            Text(
                bookItem.author
            ),
            const SizedBox(height: 10),
            TextButton.icon(
              onPressed: delete,
              label: const Text('delete item'),
              icon: const Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}