import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailPageMultiMedia extends StatelessWidget {
  final String date;
  final String description;
  final String imagePath;

  // Constructor
  DetailPageMultiMedia({
    required this.date,
    required this.description,
    required this.imagePath,
  });

  // Observables and news texts
  final RxString appbartext = "भिडियो".obs;
  final RxString appbarenglishtext = "Video".obs;
  final RxString appbarnepalitext = "भिडियो".obs;
  final RxString buttonText = 'Read in English'.obs;
  final RxString newsText =
      'सिरहामा पोखरीमा डुबेर दुई बालकको मृत्यु भएको छ । नरहा गाउँपालिका-३ खोरियाका दुई बालकको डुबेर मृत्यु भएको हो । मृत्यु हुनेमा स्थानीय शुशील मण्डलका ७ वर्षीय राहुल मण्डल र शुशीलकै भान्जा ८ वर्षीय आशिष मण्डल छन् । उनीहरू सोमबार दिउँसो १२ बजेबाट हराइरहेका थिए ।त्यसपछि स्थानीय र प्रहरीले उनीहरूको खोजी सुरु गरेको थियो । खोजी गर्ने क्रममा उनीहरू मंगलबार बिहान साढे ८ बजे बस्ती छेउकै पोखरीमा तैरिरहेको अवस्थामा मृत भेटिएका हुन् ।घटना मुचुल्का गरी शव पोष्टमार्टमका लागि सिरहास्थित प्रादेशिक अस्पताल पठाइएको इलाका प्रहरी कार्यालय मिर्चैयाका डीएसपी पञ्चकुमार बाखुले बताए ।स्थानीयका अनुसार यो पोखरी ठेकेदारहरूले  ग्राभेल खनेर अलपत्र छाडिदिएका थिए । यस क्षेत्रमा जथाभावी ग्राभेल उत्खननका कारण जताततै बनेको पोखरीमा डुबेर बर्सेनि बालबालिकाको ज्यान जाने गरेको छ ।वर्षायाम सुरु भएसँगै खाल्डा र पोखरीहरूमा पानीको सतह बढेको र यसले मानवीय दुर्घटना निम्त्याउने जोखिम रहेको भन्दै प्रहरीले बालबालिकामाथि विशेष निगरानी राख्न आग्रह गरेको छ ।\n\n'
          .obs;

  final String englishNews =
      'In Siraha, two children have drowned in a pond. The incident occurred in Ward No. 3 of Naraha Rural Municipality in Khoriya. The deceased are seven-year-old Rahul Mandal, son of local resident Sushil Mandal, and eight-year-old Ashish Mandal, Sushil\'s nephew. They were reported missing since Monday noon.Following their disappearance, local authorities and police had initiated a search. During the search on Tuesday morning around 8:30 AM, their bodies were found floating in a pond near their village.Confirming the incident, Deputy Superintendent of Police Panchakumar Bakhu from the local police office in Mirchaiya stated that the bodies were sent to Siraha District Hospital for post-mortem examination.According to locals, the pond had been left abandoned by contractors after excavation work, creating deep areas where tragic incidents like drowning could occur, especially as monsoon rains have raised water levels in ponds and ditches, posing risks to human safety. Police have urged for heightened vigilance to prevent such incidents involving children.\n\n';

  final String nepaliNews =
      'सिरहामा पोखरीमा डुबेर दुई बालकको मृत्यु भएको छ । नरहा गाउँपालिका-३ खोरियाका दुई बालकको डुबेर मृत्यु भएको हो । मृत्यु हुनेमा स्थानीय शुशील मण्डलका ७ वर्षीय राहुल मण्डल र शुशीलकै भान्जा ८ वर्षीय आशिष मण्डल छन् । उनीहरू सोमबार दिउँसो १२ बजेबाट हराइरहेका थिए ।त्यसपछि स्थानीय र प्रहरीले उनीहरूको खोजी सुरु गरेको थियो । खोजी गर्ने क्रममा उनीहरू मंगलबार बिहान साढे ८ बजे बस्ती छेउकै पोखरीमा तैरिरहेको अवस्थामा मृत भेटिएका हुन् ।घटना मुचुल्का गरी शव पोष्टमार्टमका लागि सिरहास्थित प्रादेशिक अस्पताल पठाइएको इलाका प्रहरी कार्यालय मिर्चैयाका डीएसपी पञ्चकुमार बाखुले बताए ।स्थानीयका अनुसार यो पोखरी ठेकेदारहरूले  ग्राभेल खनेर अलपत्र छाडिदिएका थिए । यस क्षेत्रमा जथाभावी ग्राभेल उत्खननका कारण जताततै बनेको पोखरीमा डुबेर बर्सेनि बालबालिकाको ज्यान जाने गरेको छ ।वर्षायाम सुरु भएसँगै खाल्डा र पोखरीहरूमा पानीको सतह बढेको र यसले मानवीय दुर्घटना निम्त्याउने जोखिम रहेको भन्दै प्रहरीले बालबालिकामाथि विशेष निगरानी राख्न आग्रह गरेको छ ।\n\n';

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
        title: Obx(() => Text(appbartext.value,
            style: TextStyle(fontSize: 20, color: Colors.blue.shade900))),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 1,
                    child: SizedBox(
                      height: 50,
                      width: 50,
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        child: ClipOval(
                          child: Image.asset(
                            'assets/mainlogokantipur.png',
                            height: 30,
                            width: 30,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Image.asset(
                      'assets/youtubeicon.png',
                      height: 50,
                      width: 50,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 16),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(8),
                color: Colors.blueGrey.shade100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      date,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      description,
                      style: const TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  if (buttonText.value == 'Read in English') {
                    buttonText.value = 'Read in Nepali';
                    newsText.value = englishNews;
                    appbartext.value = appbarenglishtext.value;
                  } else {
                    buttonText.value = 'Read in English';
                    newsText.value = nepaliNews;
                    appbartext.value = appbarnepalitext.value;
                  }
                },
                style: ButtonStyle(
                  shape: WidgetStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                      side: BorderSide(color: Colors.blue.shade900),
                    ),
                  ),
                ),
                child: Obx(() => Text(buttonText.value)),
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: 600,
                child: Obx(() => Text(
                      newsText.value,
                      style: const TextStyle(fontSize: 16),
                    )),
              ),
              const SizedBox(height: 16),
              Text(
                'Relatable News',
                style: TextStyle(
                    color: Colors.blue.shade900,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              Divider(
                color: Colors.blue.shade900,
              ),
              ListView.builder(
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
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.blue.shade900,
        unselectedItemColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.abc_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmarks_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.share_outlined),
            label: '',
          ),
        ],
        onTap: (int index) {
          if (index != 0) {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('Logout'),
                  content: const Text('You are logged out.'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('OK'),
                    ),
                  ],
                );
              },
            );
          }
        },
      ),
    );
  }
}

class Multimedianewlists extends StatelessWidget {
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imagePath,
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 16),
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
                const SizedBox(height: 8),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.bookmark_border),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.share),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
