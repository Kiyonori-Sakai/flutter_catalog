import 'package:flutter/material.dart';

class OutlinedCircularButton extends StatelessWidget {
  const OutlinedCircularButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.black,
            shape: const StadiumBorder(),
            side: const BorderSide(color: Colors.green),
          ),
          onPressed: () {
            /// Write your functions
          },
          child: const Text('OutlinedCircularButton'),
        ),
      ),
    );
  }
}
