import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Another page lol'),
          leading: IconButton(
            onPressed: () { Navigator.pop(context); },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Welcome to Mobile Legends!'),
            ],
          ),
        ));
  }
}
