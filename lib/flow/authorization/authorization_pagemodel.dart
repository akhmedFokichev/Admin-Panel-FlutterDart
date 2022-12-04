
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:puma_adm/flow/main/main_page.dart';
import 'package:stacked/stacked.dart';

class AuthorizationPageModel extends BaseViewModel {
  AuthorizationPageModel(BuildContext context) {
    navigator = Navigator.of(context);
  }

  // Services
  late NavigatorState navigator;

  // Services

  // Constants

  // Controllers

  // Variables
  var isEnableMakeButton = false;
  var loginText = "";
  var passwordText = "";
  // Logic

  Future onReady() async {
    //
  }

  void didLoginText(String string) {
    loginText = string;
    isEnableMakeButton = (loginText.isNotEmpty && passwordText.isNotEmpty);
    notifyListeners();

  }
  void didPasswordText(String string) {
    passwordText = string;
    isEnableMakeButton = (loginText.isNotEmpty && passwordText.isNotEmpty);
    notifyListeners();
  }

  void onTap() {
    log("loginText>" + loginText);
    log("passwordText>" + passwordText);
    // navigator.push(MainPageRoute(44));
    // notifyListeners();
  }
}