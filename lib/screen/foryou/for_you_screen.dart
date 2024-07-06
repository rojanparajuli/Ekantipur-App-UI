import 'package:ekantipur_clone/controller/for_you_controller.dart';
import 'package:ekantipur_clone/screen/auth/login_screen.dart';
import 'package:ekantipur_clone/screen/auth/sign_in_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForYouScreen extends StatelessWidget {
  final ForYouController controller = Get.put(ForYouController());

  ForYouScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('For You', style: TextStyle(fontSize: 18, color: Colors.blue[900]),),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_outlined),
            onPressed: () {},
          ),
        ],
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
                        onTap: () => controller.onItemTapped(0),
                        child: Text(
                          'Feed',
                          style: TextStyle(
                            color: controller.selectedIndex.value == 0
                                ? Colors.blue
                                : Colors.black,
                            fontWeight: controller.selectedIndex.value == 0
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => controller.onItemTapped(1),
                        child: Text(
                          'Saved',
                          style: TextStyle(
                            color: controller.selectedIndex.value == 1
                                ? Colors.blue
                                : Colors.black,
                            fontWeight: controller.selectedIndex.value == 1
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => controller.onItemTapped(2),
                        child: Text(
                          'History',
                          style: TextStyle(
                            color: controller.selectedIndex.value == 2
                                ? Colors.blue
                                : Colors.black,
                            fontWeight: controller.selectedIndex.value == 2
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
                          controller.selectedIndex.value == 0
                              ? -1
                              : controller.selectedIndex.value == 1
                                  ? 0
                                  : 1,
                          0,
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width / 3,
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
          Expanded(
            child: PageView(
              controller: controller.pageController,
              onPageChanged: controller.onPageChanged,
              children: [
                _buildPage(
                  image: Image.asset('assets/foryoupageimage.png'),
                  title: 'Oops!',
                  description: 'We are not able to show feed. Please login to \nuse this feature.',
                ),
                _buildPage(
                  image: Image.asset('assets/foryoupageimage.png'),
                  title: 'Oops!',
                  description: 'We are not able to show Saved. Please login to \nuse this feature.',
                ),
                _buildPage(
                  image: Image.asset('assets/foryoupageimage.png'),
                  title: 'Oops!',
                  description: 'We are not able to show History. Please login to \nuse this feature.',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPage({required Image image, required String title, required String description}) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          SizedBox(height: 200, width: 200, child: image),
          Text(
            title,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            description,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
         ElevatedButton(
  onPressed: () {
    Get.to(()=> LoginScreen()); 
  },
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.blue.shade900, 
    minimumSize: const Size(320, 50), 
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.zero,
    ),
  ),
  child: const Text('Log In', style: TextStyle(color: Colors.white),),
),

          const SizedBox(height: 10),
          TextButton(
  onPressed: () {},
  style: TextButton.styleFrom(
    foregroundColor: Colors.black, 
  ),
  child: RichText(
    text: TextSpan(
      text: "Don't have an account? ",
      style: const TextStyle(color: Colors.black),
      children: [
        TextSpan(
          text: 'Register now',
          style: TextStyle(
            color: Colors.blue.shade900, 
            decoration: TextDecoration.underline, 
          ),
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              Get.to(()=>  SignInScreen ());
            },
        ),
      ],
    ),
  ),
)

        ],
      ),
    );
  }
}
