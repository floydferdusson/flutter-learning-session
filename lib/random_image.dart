import 'dart:math';

import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class RandomImage {
  final String url;

  RandomImage(this.url);

  factory RandomImage.fromJson(Map<String, dynamic> json) {
    final data = json['data'] as Map<String, dynamic>;
    final memes = data['memes'] as List<dynamic>;
    final randomMeme =
        memes[Random().nextInt(memes.length)]; // Pick a random meme
    return RandomImage(randomMeme['url'] as String);
  }
}

Future<RandomImage> fetchRandomImage(String url) async {
  final response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    final jsonMap = await convert.jsonDecode(response.body);
    return RandomImage.fromJson(jsonMap);
  } else {
    // Handle error
    throw Exception('Failed to load image');
  }
}
