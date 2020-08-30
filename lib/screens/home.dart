import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {},
            ),
          ],
        ),
        drawer: Drawer(
          child: Column(
            children: [
              CircleAvatar(
                child: Icon(Icons.people_alt_outlined),
              ),
              Text("UserName"),
            ],
          ),
        ),
      ),
    );
  }
}
