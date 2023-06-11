import 'package:flutter/cupertino.dart';

import '../../ViewBuilder/view_builder.dart';

class RootRouter {

  final NavigatorState _navigator;
  RootRouter(this._navigator);

  showTemplate() {
    var page = ViewBuilder().templatePage(_navigator);
    _navigator.pushReplacement(page);
  }

}