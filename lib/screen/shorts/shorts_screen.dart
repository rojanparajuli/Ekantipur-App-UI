import 'package:ekantipur_clone/screen/multimedia/detail_page_multi_media.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShortsScreen extends StatelessWidget {
  final List<Map<String, String>> shortsitem = [
    {
      'date': 'जेठ २९, २०८०',
      'image': "assets/shorts1.jpg",
      'description':
          "विश्व एक्वाटिक दिवसका अवसरमा भएको प्रथम नेपाल एक्वाटिक्स च्याम्पियनसिपको पहिलो दिन शनिबार दुई नयाँ राष्ट्रिय कीर्तिमान कायम भएको छ । दिवाकर अवाले र अजलकाजी ताम्राकारले कीर्तिमान बनाएका थिए ।",
    },
    {
      'date': 'जेठ २९, २०८०',
      'image': "assets/shorts2.jpg",
      'description':
          "विश्व एक्वाटिक दिवसका अवसरमा भएको प्रथम नेपाल एक्वाटिक्स च्याम्पियनसिपको पहिलो दिन शनिबार दुई नयाँ राष्ट्रिय कीर्तिमान कायम भएको छ । दिवाकर अवाले र अजलकाजी ताम्राकारले कीर्तिमान बनाएका थिए ।",
    },
    {
      'date': 'जेठ २९, २०८०',
      'image': "assets/shorts1.jpg",
      'description':
          "विश्व एक्वाटिक दिवसका अवसरमा भएको प्रथम नेपाल एक्वाटिक्स च्याम्पियनसिपको पहिलो दिन शनिबार दुई नयाँ राष्ट्रिय कीर्तिमान कायम भएको छ । दिवाकर अवाले र अजलकाजी ताम्राकारले कीर्तिमान बनाएका थिए ।",
    },
    {
      'date': 'जेठ २९, २०८०',
      'image': "assets/shorts2.jpg",
      'description':
          "विश्व एक्वाटिक दिवसका अवसरमा भएको प्रथम नेपाल एक्वाटिक्स च्याम्पियनसिपको पहिलो दिन शनिबार दुई नयाँ राष्ट्रिय कीर्तिमान कायम भएको छ । दिवाकर अवाले र अजलकाजी ताम्राकारले कीर्तिमान बनाएका थिए ।",
    },
  ];

  ShortsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: shortsitem.length,
          itemBuilder: (context, index) {
            final item = shortsitem[index];
            return ShortsItems(
              date: item['date']!,
              description: item['description']!,
              imagePath: item['image']!,
            );
          },
        ),
      ),
    );
  }
}

class ShortsItems extends StatelessWidget {
  final String date;
  final String description;
  final String imagePath;

  const ShortsItems({
    super.key,
    required this.date,
    required this.description,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imagePath,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 16),
          Text(
            date,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            description,
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () {
              Get.to(() => DetailPageMultiMedia(
                    date: date,
                    description: description,
                    imagePath: imagePath,
                  ));
            },
            child: Text(
              'पूरा समाचार पढ्नुहोस् ',
              style: TextStyle(
                color: Colors.blue[800],
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          const SizedBox(height: 200),
          const Divider(thickness: 2),
        ],
      ),
    );
  }
}
