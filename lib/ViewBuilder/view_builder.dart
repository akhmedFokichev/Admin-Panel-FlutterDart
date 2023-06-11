
import 'package:adm/Templates/BaseView/template_router.dart';
import 'package:flutter/material.dart';

import '../Templates/BaseView/template_view.dart';
import '../Templates/BaseView/template_viewmodel.dart';

class ViewBuilder {

  MaterialPageRoute templatePage(NavigatorState navigator) {
    final router = TemplateRouter(navigator);
    final viewModel = TemplateViewModel(router);
    final page = MaterialPageRoute(
        builder: (_) => TemplateView(viewModel),
        maintainState: true
    );
    return page;
  }

}