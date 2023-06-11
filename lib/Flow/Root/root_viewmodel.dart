import 'dart:developer';
import 'dart:js_interop';

import 'package:adm/Flow/Root/root_router.dart';
import 'package:adm/ViewBuilder/view_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

class RootViewModel extends BaseViewModel {
  NavigatorState navigator = NavigatorState();
  RootRouter? router;

  RootViewModel(BuildContext context) {
    navigator = Navigator.of(context);
    router = RootRouter(navigator);
  }

  Future<void> onReady() async {
    log("RootViewModel>onReady>");
  }

  int index = 0;

  void changePage(int index) {
    this.index = index;
    notifyListeners();
  }

  void start() {
    router?.showTemplate();
  }
}
