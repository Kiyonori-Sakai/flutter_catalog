import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.black,
          ),
          onPressed: () {
            /// Write your functions
          },
          child: const Text('TextButton'),
        ),
      ),
    );
  }
}
