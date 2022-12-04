import 'package:flutter/material.dart';
import 'package:puma_adm/flow/authorization/authorization_page.dart';
import 'package:puma_adm/flow/main/main_page.dart';
import 'package:stacked/stacked.dart';

class WelcomePageModel extends BaseViewModel {
  WelcomePageModel(BuildContext context) {
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
    Future.delayed(Duration(milliseconds: 3000), () {
       navigator.pushReplacement(AuthorizationPageRoute());
    });
  }

  void onTap() {



    notifyListeners();
  }
}