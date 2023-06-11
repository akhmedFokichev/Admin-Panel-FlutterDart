
import 'dart:developer';

import 'package:adm/Templates/BaseView/template_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

class TemplateViewModel extends BaseViewModel {

  TemplateRouter _router;
  TemplateViewModel(this._router);

  Future<void> onReady() async {
    log("RootViewModel>onReady>");
  }

  PageController page = PageController();

  int index = 0;

  void changePage(int index) {
    this.index = index;
    notifyListeners();
  }

  void tap() {
    index ++;
    log(index.toString());
    notifyListeners();
  }

  void start() {
  }
}
