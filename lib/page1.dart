import 'package:flutter/material.dart';
import 'package:flutter_application_1/image_from_api.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My first page'),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(child: Image.asset('images/photo_male_1.jpg')),
            Expanded(
              flex: 2,
              child: RandomImageApp(),
            ),
            Expanded(child: Image.asset('images/photo_male_3.jpg')),
          ],
        ),
      ),
    );
  }
}
