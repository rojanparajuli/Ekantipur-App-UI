import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ekantipur_clone/screen/multimedia/detail_page_multi_media.dart';

class LatestNewsScreen extends StatelessWidget {
  LatestNewsScreen({super.key});
  
  final List<Map<String, String>> multimedianewlists = [
    {
      'date': 'जेठ २०, २०८०',
      'description':
          'सांसद न्यौपानेको प्रश्नः सिंहदरबारमा हाफपाइन्ट र चप्पल लगाउने सर्वसाधारणलाई किन प्रवेश दिइएन ?',
      'image': 'assets/m1.jpg'
    },
    {
      'date': 'जेठ २०, २०८०',
      'description':
          'देशको \'सूचना बचे सदनमा छन्\' भनियो, अब हिसाबकिताब गृह मन्त्रालय होइन प्रधानमन्त्रीसँग हुन्छ : गगन थापा',
      'image': 'assets/m8.jpg'
    },
    {
      'date': 'जेठ २९, २०८०',
      'description':
          'महानगरले फुटपाथ बनाउन भत्कायो, सडक डिभिजनले गयो कालोपत्रे',
      'image': 'assets/m7.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latest'), 
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.blue.shade900,
            width: double.infinity,
            height: 55,
            padding: const EdgeInsets.all(8),
            child: const Text(
              'आज | २२ असार २०८१ शनिबार', 
              style:  TextStyle(fontSize: 16,  color: Colors.white),
            ),
          ),
          const SizedBox(height: 16,),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: multimedianewlists.length,
              itemBuilder: (context, index) {
                final item = multimedianewlists[index];
                return GestureDetector(
                  onTap: () {
                    Get.to(() => DetailPageMultiMedia(
                          date: item['date']!,
                          description: item['description']!,
                          imagePath: item['image']!,
                        ));
                  },
                  child: Multimedianewlists(
                    date: item['date']!,
                    description: item['description']!,
                    imagePath: item['image']!,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Multimedianewlists extends StatelessWidget {
  final String date;
  final String description;
  final String imagePath;

  const Multimedianewlists({
    Key? key,
    required this.date,
    required this.description,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      description,
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      date,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              Image.asset(
                imagePath,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          height: 1, 
          color: Colors.grey[300], 
        ),
        const SizedBox(height: 14,)
      ],
    );
  }
}
