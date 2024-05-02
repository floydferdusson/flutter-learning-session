import 'package:flutter/material.dart';

class DynamicPageX extends StatelessWidget {
  const DynamicPageX({super.key});

  final description = 'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. Pavlova features a crisp crust and soft, light inside topped with fruit and whipped cream';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: ListView(
              children: [
                buildColumn(),
                buildStar(2, 90),
                const SizedBox(height: 20),
                buildRowTabs(),
              ],
            )
        )
    );
  }

  buildColumn() => Column(
    children: [
      Image.asset('images/pavlova.jpeg'),
      const SizedBox(height: 10),
      const Text(
        'Strawberry Pavlova',
        style: TextStyle(
          color: Colors.black,
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 10),
      Container(
        margin: const EdgeInsets.all(15),
        child: Text(
          description,
          textAlign: TextAlign.justify,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 19,
            fontWeight: FontWeight.w100,
          ),
        ),
      )
    ],
  );
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
    Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14,
        )
    ),
    const SizedBox(height: 10),
    Text(
        time,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
    ),
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