import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertAction {
  const AlertAction({ this.text, this.onPressed });

  final String? text;
  final VoidCallback? onPressed;
}

class Alert {
  Alert(BuildContext context) {
    _context = context;
    navigator = Navigator.of(context);
  }

  late BuildContext _context;
  late NavigatorState navigator;

  void show(String title, String content, List<AlertAction> list) {

    List<CupertinoDialogAction> actionList = [];
    list.forEach((element) {

      CupertinoDialogAction cupertinoDialogAction = CupertinoDialogAction(
        child: Text(element.text ?? ''),
        onPressed: () {
          navigator.pop();
          element.onPressed;
        },
      );

      actionList.add(cupertinoDialogAction);
    });

    Future.delayed(Duration.zero, () =>

        showCupertinoModalPopup<void>(
            context: _context,
            builder: (BuildContext context) =>
                CupertinoAlertDialog(
                    title: Text(title),
                    content: Text(content),
                    actions: actionList
                )
        )

    );
  }

}