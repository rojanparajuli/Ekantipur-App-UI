import 'package:ekantipur_clone/screen/multimedia/detail_page_multi_media.dart';
import 'package:ekantipur_clone/screen/multimedia/multi_medial_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllNewsScreen extends StatelessWidget {
  final List<Map<String, String>> multimediaItems = [
    {
      'date': 'जेठ २९, २०८०',
      'description':
          'महानगरले फुटपाथ बनाउन भत्कायो, सडक डिभिजनले गयो कालोपत्रे',
      'image': 'assets/m7.jpg'
    },
    {
      'date': 'जेठ २०, २०८०',
      'description':
          'देशको \'सूचना बचे सदनमा छन्\' भनियो, अब हिसाबकिताब गृह मन्त्रालय होइन प्रधानमन्त्रीसँग हुन्छ : गगन थापा',
      'image': 'assets/m8.jpg'
    },
    {
      'date': 'जेठ २०, २०८०',
      'description':
          'सांसद न्यौपानेको प्रश्नः सिंहदरबारमा हाफपाइन्ट र चप्पल लगाउने सर्वसाधारणलाई किन प्रवेश दिइएन ?',
      'image': 'assets/m9.jpg'
    },
    {
      'date': 'जेठ २०, २०८०',
      'description':
          'सांसद न्यौपानेको प्रश्नः सिंहदरबारमा हाफपाइन्ट र चप्पल लगाउने सर्वसाधारणलाई किन प्रवेश दिइएन ?',
      'image': 'assets/m6.jpg'
    },
  ];
  AllNewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              children: [
                Container(
                  height: 30,
                  width: 40,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 4.0),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade800,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Image.asset(
                      'assets/png-transparent-business-icon-growth-icon-progress-icon-statistics-icon-up-icon-white-text-black-line-logo-blackandwhite-thumbnail-removebg-preview.png'),
                ),
                Expanded(
                  child: Container(
                    height: 60,
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        _buildNavBarItem('कांग्रेस-येमाले गठबंधन'),
                        _buildNavBarItem('बडिपाहिरों'),
                        _buildNavBarItem('एसईई नतिजा'),
                        _buildNavBarItem('प्रदेश बजेट २०८१/८२'),
                        _buildNavBarItem('यूरो २०२४ '),
                        _buildNavBarItem('भारतीय लोकसेवा चुनाब'),
                        _buildNavBarItem('२०-२० विश्वकप क्रिकेट'),
                        _buildNavBarItem('राशिफल'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'चर्चामा',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.blue[800],
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 280,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
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
                        child: SizedBox(
                          height: 200,
                          width: 200,
                          child: MultimediaItems(
                            date: item['date']!,
                            description: item['description']!,
                            imagePath: item['image']!,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'मुख्य समाचार',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.blue[800],
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    SizedBox(
                      height: 400,
                      width: double.infinity,
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 1,
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
                            child: MultimediaItemforgrid(
                              date: item['date']!,
                              description: item['description']!,
                              imagePath: item['image']!,
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                )
              ],
            ),
            Flexible(
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
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
                    child: Multimedianewlists(
                      date: item['date']!,
                      description: item['description']!,
                      imagePath: item['image']!,
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              child: Image.asset('assets/facebookspotlight.jpg'),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('जनताको राय'),
                ),
                SizedBox(
                  width: 200,
                ),
                Text(
                  'Archive ➜',
                  style: TextStyle(decoration: TextDecoration.underline),
                )
              ],
            ),
              Container(
                     color: Colors.amber,
                              width: double.infinity,
                              height: 200,
                              padding: const EdgeInsets.all(8),
                              
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                              color: Colors.blue.shade800,
                              width: double.infinity,
                              height: 70,
                              padding: const EdgeInsets.all(8),
                              child: const Text(
                  'यधार महिनामा ४६ हजार ऋण कोलोसुचिमा पर्नुको मुख्य कारण के होला ?', 
                  style:  TextStyle(fontSize: 16,  color: Colors.white),
                              ),
                            ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavBarItem(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(4.0),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Text(
        text,
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}

class MultimediaItems extends StatelessWidget {
  //first listvew...........................
  final String date;
  final String description;
  final String imagePath;

  const MultimediaItems({
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
              fontSize: 0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            description,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class MultimediaItemforgrid extends StatelessWidget {
  //secons listview.......................
  final String date;
  final String description;
  final String imagePath;

  const MultimediaItemforgrid({
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
          const Row(
            children: [
              Text(
                'रासस/ययफपि',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                width: 200,
              ),
              Icon(Icons.bookmarks_outlined),
              SizedBox(
                width: 15,
              ),
              Icon(Icons.share_outlined)
            ],
          )
        ],
      ),
    );
  }
}

class Multimedianewlists extends StatelessWidget {
  //3rd listview
  final String date;
  final String description;
  final String imagePath;

  const Multimedianewlists({
    super.key,
    required this.date,
    required this.description,
    required this.imagePath,
  });

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
                    const Text(
                      '३० मिनेट अघि',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              Column(
                children: [
                  Image.asset(
                    imagePath,
                    width: 120,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 8),
                  const Row(
                    children: [
                      Icon(
                        Icons.bookmarks_outlined,
                        size: 20,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.share_outlined,
                        size: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          height: 1,
          color: Colors.grey[300],
        ),
        const SizedBox(
          height: 14,
        ),
      ],
    );
  }
}
