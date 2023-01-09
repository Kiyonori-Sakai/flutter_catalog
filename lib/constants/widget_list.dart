import 'package:flutter/material.dart';
import 'package:flutter_gui/ui/buttons/ColoredButton.dart';

const widgetList = <Map<String, List<Widget>>>[
  {
    'buttons': [
      ColoredButton(),
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
