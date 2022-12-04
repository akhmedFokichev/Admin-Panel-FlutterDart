

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';


class AlertView extends StatelessWidget {
  const AlertView(this.counter);
  final int counter;
  @override
  Widget build(BuildContext context) {
    return Text(
      '$counter',
      style: TextStyle(
        color: Colors.amber,
        fontSize: 36,
      ),
    );
  }


}