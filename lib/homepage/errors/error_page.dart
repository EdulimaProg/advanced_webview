import 'package:flutter/material.dart';

class IntenetErroPage extends StatelessWidget {
  const IntenetErroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.error, size: 50,)
            ],
          )
        ],
      )
    );
  }
}
