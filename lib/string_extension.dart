import 'package:flutter/material.dart';

extension TextStyle on String {
  Text largeText(BuildContext context) {
    return Text(this,
        style: Theme.of(context).textTheme.titleLarge,
        textAlign: TextAlign.center);
  }
}
