import 'package:flutter/material.dart';

class ColoredButton extends StatelessWidget {
  const ColoredButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.blue,
          ),
          onPressed: () {
            /// Write your functions
          },
          child: const Text('ColoredButton'),
        ),
      ),
    );
  }
}
