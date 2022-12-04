import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'authorization_pagemodel.dart';

 class AuthorizationPageRoute extends MaterialPageRoute {
    AuthorizationPageRoute() : super(builder: (context) => const _AuthorizationPage());
 }

class _AuthorizationPage extends StatefulWidget {
  const _AuthorizationPage();

  @override
  State<_AuthorizationPage> createState() => _AuthorizationPageState();
}

class _AuthorizationPageState extends State<_AuthorizationPage> {
  @override
    Widget build(BuildContext context) {
      return ViewModelBuilder<AuthorizationPageModel>.reactive(
        viewModelBuilder: () => AuthorizationPageModel(context),
        onModelReady: (model) => model.onReady(),
        builder: (context, model, child) {
          return Scaffold(
              appBar: AppBar(),
              backgroundColor: Colors.black38,
              body: Center(
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  width: 320,
                  height: 280,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black54,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Authorization", textAlign: TextAlign.center),
                      SizedBox(height: 24),
                      Container(
                        height: 44,
                        padding: EdgeInsets.all(8.0),
                        child: TextField(
                          onChanged: (text) {
                            model.didLoginText(text);
                          },
                          decoration: InputDecoration(
                            hintStyle: TextStyle(fontSize: 17),
                            hintText: 'login',
                            border: InputBorder.none,
                          ),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black12,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      SizedBox(height: 12),
                      Container(
                        height: 44,
                        padding: EdgeInsets.all(8.0),
                        child: TextField(
                            onChanged: (text) {
                              model.didPasswordText(text);
                            },
                          decoration: InputDecoration(
                            hintStyle: TextStyle(fontSize: 17),
                            hintText: 'passsword',
                            border: InputBorder.none,
                          )
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black12,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      SizedBox(height: 32),
                      ElevatedButton(
                        onPressed: () => _showAlertDialog(context, [

                              ]
                        ),
                        child: Text('login'),
                      ),
                    ],
                  ),
                ),
              )
          );
        },
      );
    }

  void _showAlertDialog(BuildContext context, List<CupertinoDialogAction> actions) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
            title: const Text('Alert'),
            content: const Text('Proceed with destructive action?'),
            actions: actions,
          ),
    );
  }
}

