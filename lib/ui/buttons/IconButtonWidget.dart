import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Ink(
          decoration: const ShapeDecoration(
            color: Colors.lightBlue,
            shape: CircleBorder(),
          ),
          child: IconButton(
            icon: const Icon(Icons.android),
            color: Colors.white,
            onPressed: () {
              /// Write your functions
            },
          ),
        ),
      ),
    );
  }
}
