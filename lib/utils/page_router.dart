import 'package:flutter/material.dart';
import 'package:flutter_gui/ui/buttons/ButtonWithIcon.dart';
import 'package:flutter_gui/ui/buttons/CircularButton.dart';
import 'package:flutter_gui/ui/buttons/ColoredButton.dart';
import 'package:flutter_gui/ui/buttons/GradationButton.dart';
import 'package:flutter_gui/ui/buttons/IconButtonWidget.dart';
import 'package:flutter_gui/ui/buttons/OutlinedCircularButton.dart';
import 'package:flutter_gui/ui/buttons/TextButtonWidget.dart';

Widget setButtonWidget(String filePath) {
  switch (filePath) {
    case 'ButtonWithIcon':
      return const ButtonWithIcon();
    case 'CircularButton':
      return const CircularButton();
    case 'ColoredButton':
      return const ColoredButton();
    case 'GradationButton':
      return const GradationButton();
    case 'IconButtonWidget':
      return const IconButtonWidget();
    case 'OutlinedCircularButton':
      return const OutlinedCircularButton();
    case 'TextButtonWidget':
      return const TextButtonWidget();
    default:
      return const Center(
        child: Text('Undefined FilePath'),
      );
  }
}
