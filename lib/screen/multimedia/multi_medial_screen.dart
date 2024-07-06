import 'package:ekantipur_clone/screen/multimedia/detail_page_multi_media.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MultimediaScreen extends StatelessWidget {
  final List<Map<String, String>> multimediaItems = [
    {
      'date': 'जेठ २९, २०८०',
      'description': 'महानगरले फुटपाथ बनाउन भत्कायो, सडक डिभिजनले गयो कालोपत्रे',
      'image': 'assets/m7.jpg'
    },
    {
      'date': 'जेठ २०, २०८०',
      'description': 'देशको \'सूचना बचे सदनमा छन्\' भनियो, अब हिसाबकिताब गृह मन्त्रालय होइन प्रधानमन्त्रीसँग हुन्छ : गगन थापा',
      'image': 'assets/m8.jpg'
    },
    {
      'date': 'जेठ २०, २०८०',
      'description': 'सांसद न्यौपानेको प्रश्नः सिंहदरबारमा हाफपाइन्ट र चप्पल लगाउने सर्वसाधारणलाई किन प्रवेश दिइएन ?',
      'image': 'assets/m9.jpg'
    },
     {
      'date': 'जेठ २०, २०८०',
      'description': 'सांसद न्यौपानेको प्रश्नः सिंहदरबारमा हाफपाइन्ट र चप्पल लगाउने सर्वसाधारणलाई किन प्रवेश दिइएन ?',
      'image': 'assets/m6.jpg'
    },
     {
      'date': 'जेठ २०, २०८०',
      'description': 'सांसद न्यौपानेको प्रश्नः सिंहदरबारमा हाफपाइन्ट र चप्पल लगाउने सर्वसाधारणलाई किन प्रवेश दिइएन ?',
      'image': 'assets/m5.jpg'
    },
     {
      'date': 'जेठ २०, २०८०',
      'description': 'सांसद न्यौपानेको प्रश्नः सिंहदरबारमा हाफपाइन्ट र चप्पल लगाउने सर्वसाधारणलाई किन प्रवेश दिइएन ?',
      'image': 'assets/m4.jpg'
    },
     {
      'date': 'जेठ २०, २०८०',
      'description': 'सांसद न्यौपानेको प्रश्नः सिंहदरबारमा हाफपाइन्ट र चप्पल लगाउने सर्वसाधारणलाई किन प्रवेश दिइएन ?',
      'image': 'assets/m3.jpg'
    },
     {
      'date': 'जेठ २०, २०८०',
      'description': 'सांसद न्यौपानेको प्रश्नः सिंहदरबारमा हाफपाइन्ट र चप्पल लगाउने सर्वसाधारणलाई किन प्रवेश दिइएन ?',
      'image': 'assets/m2.jpg'
    },
     {
      'date': 'जेठ २०, २०८०',
      'description': 'सांसद न्यौपानेको प्रश्नः सिंहदरबारमा हाफपाइन्ट र चप्पल लगाउने सर्वसाधारणलाई किन प्रवेश दिइएन ?',
      'image': 'assets/m1.jpg'
    },
  ];

   MultimediaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Multimedia'),
      ),
      body: ListView.builder(
        itemCount: multimediaItems.length,
        itemBuilder: (context, index) {
          final item = multimediaItems[index];
          return GestureDetector(
            onTap: () {
              Get.to(() => DetailPageMultiMedia(
                    date: item['date']!,
                    description: item['description']!,
                    imagePath: item['image']!,
                  ));
            },
            child: MultimediaItem(
              date: item['date']!,
              description: item['description']!,
              imagePath: item['image']!,
            ),
          );
        },
      ),
    );
  }
}

class MultimediaItem extends StatelessWidget {
  final String date;
  final String description;
  final String imagePath;

  const MultimediaItem({
    super.key,
    required this.date,
    required this.description,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imagePath),
          const SizedBox(height: 8),
          Text(
            date,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            description,
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
          const Divider(thickness: 1),
        ],
      ),
    );
  }
}