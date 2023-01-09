import 'package:flutter/material.dart';
import 'package:flutter_gui/ui/buttons/ButtonWithIcon.dart';
import 'package:flutter_gui/ui/buttons/CircularButton.dart';
import 'package:flutter_gui/ui/buttons/ColoredButton.dart';
import 'package:flutter_gui/ui/buttons/GradationButton.dart';
import 'package:flutter_gui/ui/buttons/IconButtonWidget.dart';
import 'package:flutter_gui/ui/buttons/OutlinedCircularButton.dart';

import '../ui/buttons/TextButtonWidget.dart';

const widgetList = <Map<String, List<Widget>>>[
  {
    '/buttons': [
      ButtonWithIcon(),
      CircularButton(),
      ColoredButton(),
      GradationButton(),
      IconButtonWidget(),
      OutlinedCircularButton(),
      TextButtonWidget(),
    ],
  },
];

int calculateTheNumberOfCategories() => widgetList.length;

int calculateTheNumberOfItems() {
  int number = 0;
  for (final category in widgetList) {
    number += category.values.length;
  }

  return number;
}
