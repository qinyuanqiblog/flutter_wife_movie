import 'package:flutter/material.dart';
import '../../widgets/tabItem.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: SafeArea(
            child: TabBar(labelColor: Colors.red, isScrollable: true, tabs: [
              Tab(text: "zhi"),
              Tab(text: "Edit"),
            ]),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            TabItem(),
            Center(
              child: Text('It\'s rainy here'),
            ),
          ],
        ),
      ),
    );
  }
}
