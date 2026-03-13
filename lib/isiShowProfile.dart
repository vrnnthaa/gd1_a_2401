import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import '../pubspec.yaml';

class IsiShowProfile extends StatefulWidget {
  const IsiShowProfile({super.key});
  
  @override
  State<IsiShowProfile> createState() => _IsiShowProfileState();
}

List urlList = [
  Image.asset('images/image1.JPG'),
  Image.asset('images/image2.JPG'),
  Image.asset('images/image3.JPG'),
  Image.asset('images/image1.JPG'),
  Image.asset('images/image2.JPG'),
  Image.asset('images/image3.JPG'),
];

class _IsiShowProfileState extends State<IsiShowProfile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            // ── Carousel Horizontal ──
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              height: 200,
              child: ScrollConfiguration(
                behavior: const MaterialScrollBehavior().copyWith(
                  dragDevices: {...PointerDeviceKind.values},
                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    for (final img in urlList)
                      Container(
                        width: 110,
                        height: 110,
                        color: Colors.white,
                        child: img,
                      ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, 
                    crossAxisSpacing: 4, 
                    mainAxisSpacing: 4, 
                    childAspectRatio: 1.0, 
                  ),
                  itemCount: urlList.length,
                  itemBuilder: (context, index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: urlList[index],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}