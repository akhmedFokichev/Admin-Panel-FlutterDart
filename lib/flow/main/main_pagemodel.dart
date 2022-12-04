
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class MainPageModel extends BaseViewModel {
  MainPageModel(BuildContext context) {
      navigator = Navigator.of(context);
    }

    // Services
    late NavigatorState navigator;
  // Services

  // Constants

  // Controllers

  // Variables

  // Logic

  Future onReady() async {
    //
  }

  void onTap() {
    notifyListeners();
  }
}