
import 'package:flutter/material.dart';
import 'package:puma_adm/flow/welcome/welcome_pagemodel.dart';
import 'package:stacked/stacked.dart';

class WelcomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<WelcomePageModel>.reactive(
      viewModelBuilder: () => WelcomePageModel(context),
      onModelReady: (model) => model.onReady(),
      builder: (context, model, child) {
        return Scaffold(
            appBar: AppBar(),
            backgroundColor: Colors.blueGrey,
            body: Center(
              child: Container(
                width: 200,
                height: 200,
                child: Text(
                  'загрузка',
                  textAlign: TextAlign.center,
                ),
              ),
            )
        );
      },
    );
  }
}
