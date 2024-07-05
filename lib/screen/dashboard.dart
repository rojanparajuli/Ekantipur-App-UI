import 'package:ekantipur_clone/controller/dashboard_controller.dart';
import 'package:ekantipur_clone/screen/drawer/drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dashboard extends StatelessWidget {
  final DashboardController controller = Get.put(DashboardController());

  Dashboard({super.key});

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page Content'),
    Text('Search Page Content'),
    Text('Notifications Page Content'),
    Text('Messages Page Content'),
    Text('Profile Page Content'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Builder(
              builder: (context) => IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
            ),
            Image.asset(
              'assets/kantipurnepalilog.png',
              height: 40,
            ),
            CircleAvatar(
              backgroundColor: Colors.grey[500],
              child: Icon(
                Icons.person_2_rounded,
                color: Colors.blue[800],
                size: 30,
              ),
            ),
          ],
        ),
        automaticallyImplyLeading: false,
      ),
      drawer: const Drawer(
        child: Drawerlists(),
      ),
      body: Obx(() => Center(
        child: _widgetOptions.elementAt(controller.selectedIndex.value),
      )),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: controller.selectedIndex.value,
        selectedItemColor: Colors.blue[800],
        onTap: controller.onItemTapped,
      )),
    );
  }
}
