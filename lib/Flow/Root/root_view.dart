import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'root_viewmodel.dart';

class RootViewRoute extends MaterialPageRoute {
  RootViewRoute() : super(builder: (context) => RootView());
}

class RootView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _RootView();
  }
}

class _RootView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RootViewModel>.reactive(
      viewModelBuilder: () => RootViewModel(context),
      onModelReady: (model) => model.onReady(),
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(title: Text("КЖ с рубцами ЧЛО"),
          ),
          body: _Body(),
        );
      },
    );
  }
}

class _Body extends ViewModelWidget<RootViewModel> {
  @override
  Widget build(BuildContext context, RootViewModel viewModel) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Image.asset("assets/icon.png")
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(" Анкета",
            style: TextStyle(fontSize: 20), textAlign: TextAlign.center,),
        ),

        SizedBox(height: 64),
        Center(
          child: CupertinoButton.filled(
              child: Text("Начать"),
              onPressed: () {
                viewModel.start();
              }),
        )
      ],
    );
  }
}
