import 'package:act_fibernet_clone/screens/tabView/accountView.dart';
import 'package:act_fibernet_clone/screens/tabView/homeTabView.dart';
import 'package:act_fibernet_clone/screens/tabView/socialTabView.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isClicked = true;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Container(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Hi John"),
            elevation: 0.0,
            actions: [
              IconButton(
                icon: Icon(Icons.notifications),
                onPressed: () {},
              ),
            ],
            bottom: TabBar(
              indicatorWeight: 5,
              tabs: [
                Tab(
                  text: "Account",
                ),
                Tab(
                  text: "Home",
                ),
                Tab(
                  text: "Social",
                ),
              ],
            ),
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
                buildListTile("My Wi-Fi Settings", Icons.wifi, () {}),
                buildListTile("Upgrade my plan", Icons.upgrade, () {}),
                buildListTile("Shop", Icons.shopping_basket, () {}),
                buildListTile("Offers", Icons.local_offer, () {}),
                buildListTile(
                    "Notifications", Icons.notification_important, () {}),
                buildListTile("FAQ's", Icons.perm_identity, () {}),
                buildListTile("About us", Icons.people_alt, () {}),
                buildListTile("Rate This App", Icons.star, () {}),
                buildListTile("Logout", Icons.logout, () {}),
                buildListTile("App version: 0.0.1", Icons.new_releases, () {}),
              ],
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            color: Colors.white,
            child: Container(
              height: 70.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.home_outlined,
                          size: 30.0,
                          color: Colors.red,
                        ),
                        onPressed: () {},
                      ),
                      Text(
                        "Home",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.support_agent,
                          size: 30.0,
                          color: Colors.grey,
                        ),
                        onPressed: () {},
                      ),
                      Text(
                        "Support",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.east_rounded,
                          size: 30.0,
                          color: Colors.grey,
                        ),
                        onPressed: () {},
                      ),
                      Text(
                        "Refer & Earn",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.list,
                          size: 30.0,
                          color: isClicked ? Colors.red : Colors.grey[600],
                        ),
                        onPressed: () {},
                      ),
                      Text(
                        "Bill details",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: [
              AccountTabView(),
              HomeTabView(),
              SocialTabView(),
            ],
          ),
        ),
      ),
    );
  }

  ListTile buildListTile(String title, icon, Function onTap) {
    return ListTile(
      title: Text(title),
      leading: Icon(icon, color: Colors.yellowAccent[700]),
      onTap: onTap,
    );
  }
}
