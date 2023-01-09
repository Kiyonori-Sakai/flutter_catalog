import 'package:flutter/material.dart';

class ButtonWithIcon extends StatelessWidget {
  const ButtonWithIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton.icon(
          icon: const Icon(
            Icons.flutter_dash,
            color: Colors.white,
          ),
          label: const Text('With Icon'),
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.green,
          ),
          onPressed: () {
            /// Write your functions
          },
        ),
      ),
    );
  }
}
