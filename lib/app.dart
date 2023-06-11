import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Flow/Root/root_view.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          inputDecorationTheme: InputDecorationTheme(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.black, width: 2),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),

              borderSide: BorderSide(color: Colors.black, width: 2),
            ),
          ),
          // buttonColor:  Colors.green,

          appBarTheme: AppBarTheme(centerTitle: true)),
      home: RootView(),
    );
  }
}
