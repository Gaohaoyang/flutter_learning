import 'package:flutter/material.dart';

class WorldClock extends StatefulWidget {
  const WorldClock({Key? key}) : super(key: key);

  @override
  State<WorldClock> createState() => _WorldClockState();
}

class _WorldClockState extends State<WorldClock> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Text('clock')),
    );
  }
}
