
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'main_pagemodel.dart';

class MainPageRoute extends MaterialPageRoute {
  MainPageRoute(int counter) : super(builder: (context) => MainPage(counter));
}

class MainPage extends StatelessWidget {
  const MainPage(this.counter);
  final int counter;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MainPageModel>.reactive(
      viewModelBuilder: () => MainPageModel(context),
      onModelReady: (model) => model.onReady(),
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(),
          body: Column(
            children: [
              Text('Count=${555}'),
              ElevatedButton(
                onPressed: model.onTap,
                child: Text('Tap me'),
              ),
            ],
          ),
        );
      },
    );
  }
}