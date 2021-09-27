import 'package:flutter/material.dart';

showAlertDialog(
    {@required context,
    @required title,
    content: const SizedBox(),
    actions: ''}) {
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: title,
    content: content,
    actions: actions == ''
        ? [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Ok"))
          ]
        : actions,
  );
  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

Future<bool> confirmationDialog(
    {required context,
    @required title,
    content: const SizedBox(),
    actions: ''}) async {
  return await showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: title,
      content: content,
      actions: actions == ''
          ? [
              TextButton(
                onPressed: () {
                  Navigator.pop(context, false);
                },
                child: Text("Cancel"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context, true);
                },
                child: Text("Proceed"),
              ),
            ]
          : actions,
    ),
  );
}
