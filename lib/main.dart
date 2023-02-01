import 'package:flutter/material.dart';
import './Pages/ExpandedDemo.dart';
import './Pages/NinjaCard.dart';
import './Pages/StatefulDemo.dart';
import './Pages/SimpleList.dart';
import './Pages/ObjectList.dart';
import './Pages/ObjectListWithCard.dart';
import './Pages/WorldClock.dart';
import './DataModel/HomePageListItem.dart';

void main() {
  runApp(const MaterialApp(home: Home()));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<HomePageListItem> homePageList = [
    HomePageListItem(
      itemName: 'Expanded',
      pageWidget: const ExpandedDemo(),
    ),
    HomePageListItem(
      itemName: 'NinjaId Card',
      pageWidget: const NinjaCard(),
    ),
    HomePageListItem(
      itemName: 'Stateful Demo',
      pageWidget: const NinjaCardStatefulDemo(),
    ),
    HomePageListItem(
      itemName: 'SimpleList',
      pageWidget: const SimpleList(),
    ),
    HomePageListItem(
      itemName: 'ObjectList(Book List)',
      pageWidget: const ObjectList(),
    ),
    HomePageListItem(
      itemName: 'ObjectListWithCard(Book List)',
      pageWidget: const ObjectListWithCard(),
    ),
    HomePageListItem(
      itemName: 'WorldClock',
      pageWidget: const WorldClock(),
    ),
  ];

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
        children: homePageList.map((item) =>
          ListTile(
            title: Text(item.itemName),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => item.pageWidget)
              );
            },
          )
        ).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {print('clicked')},
        backgroundColor: Colors.red[600],
        child: const Text('click'),
      ),
    );
  }
}
