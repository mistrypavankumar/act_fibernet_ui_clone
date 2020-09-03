import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Hi John"),
          actions: [
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {},
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 10,
                      left: 5,
                      child: Column(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Icon(
                              Icons.perm_identity,
                              color: Colors.white,
                              size: 35.0,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "John",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              buildListTile("My Account", Icons.people, () {}),
              buildListTile("My Account", Icons.people, () {}),
              buildListTile("My Account", Icons.people, () {}),
              buildListTile("My Account", Icons.people, () {}),
              buildListTile("My Account", Icons.people, () {}),
            ],
          ),
        ),
      ),
    );
  }

  ListTile buildListTile(String title, icon, Function onTap) {
    return ListTile(
      title: Text(title),
      leading: Icon(icon),
      onTap: onTap,
    );
  }
}
