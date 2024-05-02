import 'package:flutter/material.dart';

class DynamicPage2 extends StatelessWidget {
  const DynamicPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('This is another appbar'),
        ),
        body: Center(
          child: buildRowTabs()
        )
    );
  }
}

buildStar(int rating, int numreviews) => Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    for (int i = 1; i <= rating; i++)
      const Icon(Icons.star, color: Colors.yellow, size: 50),
    for (int i = 1; i <= (5 - rating); i++)
      const Icon(Icons.star, size: 50),
    const SizedBox(width: 20),
    Text(
      '$numreviews reviews',
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
    ),
  ],
);

buildIconTab(iconval, title, time) => Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Icon(iconval, color: Colors.green),
    const SizedBox(height: 10),
    Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
    const SizedBox(height: 10),
    Text(time, style: TextStyle(fontWeight: FontWeight.bold)),
  ],
);

buildRowTabs() => Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    buildIconTab(Icons.kitchen, 'PREP', '25 min'),
    const SizedBox(width: 15),
    buildIconTab(Icons.timer, 'COOK', '1 hr'),
    const SizedBox(width: 15),
    buildIconTab(Icons.restaurant, 'FEEDS', '4-6'),
  ],
);