import 'package:flutter/material.dart';
import 'package:flutter_application_1/random_image.dart';

class RandomImageApp extends StatefulWidget {
  const RandomImageApp({super.key});

  @override
  _RandomImageAppState createState() => _RandomImageAppState();
}

class _RandomImageAppState extends State<RandomImageApp> {
  late String imageUrl;

  @override
  void initState() {
    super.initState();
    _fetchImage();
  }

  void _fetchImage() async {
    try {
      final imageData =
          await fetchRandomImage('https://api.imgflip.com/get_memes');
      setState(() {
        imageUrl = imageData.url;
      });
    } catch (error) {
      print(error); // Handle error (e.g., display an error message)
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: imageUrl != null
            ? Image.network(imageUrl)
            : const CircularProgressIndicator()); // Show loading indicator
  }
}
