import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  const CircularButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.black,
            backgroundColor: Colors.amber,
            shape: const StadiumBorder(),
          ),
          onPressed: () {
            /// Write your functions
          },
          child: const Text('CircularButton'),
        ),
      ),
    );
  }
}
