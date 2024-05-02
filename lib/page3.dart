import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Last page?'),
      ),
      body: Center(
        child: Stack(
          children: [
            Center(
              child: Container(
                width: 150,
                height: 150,
                color: Colors.yellow,
              ),
            ),
            Center(
              child: Container(
                width: 125,
                height: 125,
                color: Colors.black,
              ),
            ),
            Center(
              child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.yellow,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Hey'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Hello '),
                          Text('World'),
                        ],
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
