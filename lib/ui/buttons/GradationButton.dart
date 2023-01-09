import 'package:flutter/material.dart';

class GradationButton extends StatelessWidget {
  const GradationButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(0),
        ),
        onPressed: () {
          /// Write your functions
        },
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                Colors.orange.shade300,
                Colors.orange.shade700,
              ],
            ),
          ),
          padding: const EdgeInsets.all(10),
          child: const Text('Gradation'),
        ),
      ),
    );
  }
}
