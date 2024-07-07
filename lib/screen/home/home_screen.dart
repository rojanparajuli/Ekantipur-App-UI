import 'package:ekantipur_clone/controller/home_controller.dart';
import 'package:ekantipur_clone/screen/drawer/drawer.dart';
import 'package:ekantipur_clone/screen/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomeScreen extends StatelessWidget {
  final HomeController homeController = Get.put(HomeController());
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                if (_scaffoldKey.currentState?.isDrawerOpen ?? false) {
                  Navigator.of(context).pop();
                } else {
                  _scaffoldKey.currentState?.openDrawer();
                }
              },
              child: Icon(Icons.menu),
            ),
            Image.asset(
              'assets/kantipurnepalilog.png',
              height: 40,
            ),
            SizedBox(
              height: 40,
              width: 40,
              child: GestureDetector(
                onTap: () {
                  Get.to(() => const ProfileScreen());
                },
                child: CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                  backgroundImage: AssetImage(
                      'assets/blue-person-icon-blue-person-icon-115629039821nthr4gtiu.png'),
                ),
              ),
            ),
          ],
        ),
        automaticallyImplyLeading: false,
      ),
      drawer: const CustomDrawer(),
      body: Column(
        children: [
          Obx(
            () => Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () => homeController.onItemTapped(0),
                        child: Text(
                          'सबै',
                          style: TextStyle(
                            color: homeController.selectedIndex.value == 0
                                ? Colors.blue
                                : Colors.black,
                            fontWeight: homeController.selectedIndex.value == 0
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => homeController.onItemTapped(1),
                        child: Text(
                          'समाचार',
                          style: TextStyle(
                            color: homeController.selectedIndex.value == 1
                                ? Colors.blue
                                : Colors.black,
                            fontWeight: homeController.selectedIndex.value == 1
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => homeController.onItemTapped(2),
                        child: Text(
                          'अर्थ/ बाणिज्य',
                          style: TextStyle(
                            color: homeController.selectedIndex.value == 2
                                ? Colors.blue
                                : Colors.black,
                            fontWeight: homeController.selectedIndex.value == 2
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => homeController.onItemTapped(3),
                        child: Text(
                          'विचार',
                          style: TextStyle(
                            color: homeController.selectedIndex.value == 3
                                ? Colors.blue
                                : Colors.black,
                            fontWeight: homeController.selectedIndex.value == 3
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => homeController.onItemTapped(4),
                        child: Text(
                          'खेलकुद',
                          style: TextStyle(
                            color: homeController.selectedIndex.value == 4
                                ? Colors.blue
                                : Colors.black,
                            fontWeight: homeController.selectedIndex.value == 4
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => homeController.onItemTapped(5),
                        child: Text(
                          'उपत्यका',
                          style: TextStyle(
                            color: homeController.selectedIndex.value == 5
                                ? Colors.blue
                                : Colors.black,
                            fontWeight: homeController.selectedIndex.value == 5
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Stack(
                    children: [
                      Container(
                        height: 2,
                        color: Colors.grey[300],
                      ),
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        alignment: Alignment(
                          homeController.selectedIndex.value == 0
                              ? -1
                              : homeController.selectedIndex.value == 1
                                  ? -0.5
                                  : homeController.selectedIndex.value == 2
                                      ? 0
                                      : homeController.selectedIndex.value == 3
                                          ? 0.5
                                          : homeController.selectedIndex.value == 4
                                              ? 1
                                              : homeController.selectedIndex.value == 5
                                                  ? 1.5
                                                  : 2,
                          0,
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width / 6,
                          height: 2,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Text('Profile Screen'),
      ),
    );
  }
}
