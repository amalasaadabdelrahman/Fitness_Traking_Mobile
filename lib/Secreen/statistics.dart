import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../component/statistics.dart';

class Statistics extends StatefulWidget {
  const Statistics({Key? key}) : super(key: key);

  @override
  State<Statistics> createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        width: 280,
        backgroundColor: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/n.jpg'),
                ),
                title: Text(
                  'Duck UI',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  'amalasaad@gmail.com',
                  style: TextStyle(color: Colors.grey),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Search',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ListTile(
                leading: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  'Dashboard',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                leading: IconButton(
                  icon: Icon(
                    Icons.analytics_outlined,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                title: Text(
                  'Revenue',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                leading: IconButton(
                  icon: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                title: Text(
                  'Notifications',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                leading: IconButton(
                  icon: Icon(
                    Icons.timelapse,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                title: Text(
                  'Analytics',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                leading: IconButton(
                  icon: Icon(
                    Icons.inventory_2_outlined,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                title: Text(
                  'Inventory',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                leading: IconButton(
                  icon: Icon(
                    Icons.language,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                title: Text(
                  'Language',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                leading: IconButton(
                  icon: Icon(
                    Icons.logout,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('You are logged out'),
                        backgroundColor: Colors.black,
                      ),
                    );
                  },
                ),
                title: Text(
                  'Logout',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.black,
                size: 40,
              ),
            ),
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: DefaultTabController(
          length: 5,
          child: Padding(
            padding: const EdgeInsets.only(top: 35),
            child: Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/n.jpg'),
                  ),
                  title: Text(
                    'Amal Asaad',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text('Gaza'),
                ),
                const TabBar(
                  indicatorSize: TabBarIndicatorSize.label,
                  labelColor: Colors.black,
                  indicatorColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  labelPadding: EdgeInsets.symmetric(horizontal: 20),
                  tabs: [
                    Tab(
                      text: 'April',
                      height: 50,
                    ),
                    Tab(
                      text: 'May',
                      height: 50,
                    ),
                    Tab(
                      text: 'June',
                      height: 50,
                    ),
                    Tab(
                      text: 'July',
                      height: 50,
                    ),
                    Tab(
                      text: 'Augest',
                      height: 50,
                    ),
                  ],
                  isScrollable: true,
                ),
                Flexible(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TabBarView(
                      children: [
                        BuildStatistics(),
                        BuildStatistics(),
                        BuildStatistics(),
                        BuildStatistics(),
                        BuildStatistics()
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
