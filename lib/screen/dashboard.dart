import 'package:ekantipur_clone/controller/dashboard_controller.dart';
import 'package:ekantipur_clone/screen/foryou/for_you_screen.dart';
import 'package:ekantipur_clone/screen/home/home_screen.dart';
import 'package:ekantipur_clone/screen/latest/latest_screen.dart';
import 'package:ekantipur_clone/screen/multimedia/multi_medial_screen.dart';
import 'package:ekantipur_clone/screen/shorts/shorts_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dashboard extends StatelessWidget {
  final DashboardController controller = Get.put(DashboardController());

  Dashboard({super.key});

  static  final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    ForYouScreen(),
    ShortsScreen(),
   LatestNewsScreen(),
    MultimediaScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
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
            icon: Icon(Icons.star),
            label: 'For You',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_sharp),
            label: 'Shorts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.watch_later),
            label: 'Latest',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.slow_motion_video_outlined),
            label: 'Multimedia',
          ),
        ],
        currentIndex: controller.selectedIndex.value,
        selectedItemColor: Colors.blue[800],
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: TextStyle(
          color: Colors.blue[800],
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelStyle: TextStyle(
          color: Colors.grey[700],
        ),
        showUnselectedLabels: true,
        showSelectedLabels: true,
        type: BottomNavigationBarType.fixed,
        onTap: controller.onItemTapped,
      )),
    );
  }
}
