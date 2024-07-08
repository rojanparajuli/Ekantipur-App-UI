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
        body:  DefaultTabController(
          length: 6,
          child: Column(
            children: [
              TabBar(
                labelColor: Colors.blue[800],
                indicatorColor:  Colors.blue[800],
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
              const Expanded(
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
