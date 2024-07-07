import 'package:ekantipur_clone/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  final HomeController homeController = Get.put(HomeController());

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  bool isDrawerOpen = false;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                if (scaffoldKey.currentState!.isDrawerOpen) {
                  scaffoldKey.currentState!.openEndDrawer();
                  setState(() {
                    isDrawerOpen = false;
                  });
                } else {
                  scaffoldKey.currentState!.openDrawer();
                  setState(() {
                    isDrawerOpen = true;
                  });
                }
              },
            );
          },
        ),
        flexibleSpace: SafeArea(
          child: SizedBox(
            child: Image.asset(
              'assets/kantipurnepalilog.png',
              height: 50,
              width: 200,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
                height: 25,
                child: CircleAvatar(
                  child: Image.asset(
                      'assets/blue-person-icon-blue-person-icon-115629039821nthr4gtiu.png'),
                )),
          )
        ],
      ),
      body: Scaffold(
        backgroundColor: Colors.white,
        key: scaffoldKey,
        drawer: Drawer(
          backgroundColor: Colors.white,
          shape: const BeveledRectangleBorder(borderRadius: BorderRadius.zero),
          width: MediaQuery.of(context).size.width,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                height: 2,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.transparent),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 3,
                      offset: const Offset(0, 1),
                    ),
                  ],
                ),
              ),
              Container(
                height: 2,
                color: Colors.white,
              ),
              Container(
                color: Colors.lightBlue.shade100.withOpacity(0.2),
                height: 80,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Create an account',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.lightBlue[700],
                              )),
                          const SizedBox(height: 5),
                          const Text('To access all premium features',
                              style: TextStyle(fontSize: 10)),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(80, 30),
                          elevation: 0,
                          backgroundColor:
                              Colors.lightBlue.shade100.withOpacity(0.2),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.lightBlue[700]!),
                            borderRadius: BorderRadius.circular(0),
                          ),
                        ),
                        child: Text('Sign Up',
                            style: TextStyle(color: Colors.lightBlue[700])),
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(
                title: const Text('Item 1'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Item 2'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
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
                              fontWeight:
                                  homeController.selectedIndex.value == 0
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
                              fontWeight:
                                  homeController.selectedIndex.value == 1
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
                              fontWeight:
                                  homeController.selectedIndex.value == 2
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
                              fontWeight:
                                  homeController.selectedIndex.value == 3
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
                              fontWeight:
                                  homeController.selectedIndex.value == 4
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
                              fontWeight:
                                  homeController.selectedIndex.value == 5
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
                                        : homeController.selectedIndex.value ==
                                                3
                                            ? 0.5
                                            : homeController
                                                        .selectedIndex.value ==
                                                    4
                                                ? 1
                                                : homeController.selectedIndex
                                                            .value ==
                                                        5
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
      ),
    );
  }
}
