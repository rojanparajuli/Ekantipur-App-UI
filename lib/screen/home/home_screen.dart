import 'package:ekantipur_clone/controller/home_controller.dart';
import 'package:ekantipur_clone/screen/%E0%A4%B8%E0%A4%AC%E0%A5%88/%E0%A4%B8%E0%A4%AC%E0%A5%88.dart';
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
                  backgroundColor: Colors.blueGrey.shade500,
                  child: ClipOval(
                    child: Image.asset(
                        'assets/blue-person-icon-blue-person-icon-115629039821nthr4gtiu.png'),
                  ),
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
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Stack(
                              children: [
                                SizedBox(
                                  height: 85,
                                  child: ColorFiltered(
                                    colorFilter: ColorFilter.mode(
                                      Colors.white.withOpacity(0.9),
                                      BlendMode.srcOver,
                                    ),
                                    child: Image.asset(
                                      'assets/loginkantipur.jpg',
                                      height:
                                          MediaQuery.of(context).size.height,
                                      width: MediaQuery.of(context).size.width,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 16,
                                  top: 16,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Create an account",
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue.shade900,
                                        ),
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        'To access all premium features',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey.shade700,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 80,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 4.0),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              border: Border.all(color: Colors.blue.shade800),
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            child: Center(
                              child: Text(
                                'Sign up',
                                style: TextStyle(
                                  color: Colors.blue.shade800,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      child: ListView(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        padding: const EdgeInsets.only(top: 16.0),
                        children: [
                          for (var word in [
                            'Container',
                            'Profile',
                            'Settings',
                            'Notifications',
                            'Messages',
                            'Favorites',
                            'Friends',
                            'Groups',
                            'Events',
                            'Photos',
                            'Videos',
                            'Music',
                            'Files',
                            'Search',
                            'Maps',
                            'Weather',
                            'News',
                            'Market',
                            'Help',
                            'E-paper',
                            'About Us'
                          ])
                            Container(
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          width: 0.1, color: Colors.grey))),
                              child: ListTile(
                                title: Text(
                                  word,
                                  style: TextStyle(
                                      color: word == 'Container' ||
                                              word == 'E-paper'
                                          ? Colors.blue.shade800
                                          : Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    Container(
                      height: 170,
                      width: double.infinity,
                      color: Colors.grey.shade200,
                      child: Column(
                        children: [
                          SizedBox(
                              height: 100,
                              width: 100,
                              child:
                                  Image.asset('assets/kantipurnepalilog.png')),
                          const Text(
                            '+977-01-5135000, +977-01-5135001',
                            style: TextStyle(fontSize: 11, color: Colors.grey),
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                          Text(
                            '@Copyright eKantipur.com',
                            style: TextStyle(
                                fontSize: 11, color: Colors.blue.shade800),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        body: DefaultTabController(
          length: 6,
          child: Column(
            children: [
              TabBar(
                  labelColor: Colors.blue[800],
                  indicatorColor: Colors.blue[800],
                  tabAlignment: TabAlignment.start,
                  // labelPadding: EdgeInsets.symmetric(horizontal: 0),
                  indicatorSize: TabBarIndicatorSize.label,
                  isScrollable: true,
                  tabs: const [
                    Tab(
                      text: 'सबै',
                    ),
                    Tab(
                      text: 'समाचार',
                    ),
                    Tab(
                      text: 'अर्थ/ बाणिज्य',
                    ),
                    Tab(
                      text: 'विचार',
                    ),
                    Tab(
                      text: 'खेलकुद',
                    ),
                    Tab(
                      text: 'उपत्यका',
                    ),
                  ]),
              Expanded(
                child: TabBarView(children: [
                  AllNewsScreen(),
                  AllNewsScreen(),
                  AllNewsScreen(),
                  AllNewsScreen(),
                  AllNewsScreen(),
                  AllNewsScreen(),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
