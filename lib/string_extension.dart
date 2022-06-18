import 'package:flutter/material.dart';

extension TextStyle on String {
  Text large(BuildContext context) {
    return Text(this, style: Theme.of(context).textTheme.titleLarge);
  }
}
