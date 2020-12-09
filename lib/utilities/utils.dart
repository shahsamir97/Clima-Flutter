import 'package:flutter/cupertino.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:flutter/material.dart';

void locationNotAvailableAlert(BuildContext context) {
  Alert(
    context: context,
    type: AlertType.error,
    title: "Location Not Available!",
    desc: "You need to enable location on to get weather update.",
    style: AlertStyle(
      isOverlayTapDismiss: false,
      isCloseButton: false,
      animationDuration: Duration(microseconds: 1500),
    ),
    buttons: [
      DialogButton(
        color: Colors.blue,
        child: Text(
          'Enable',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        onPressed: () => Navigator.pop(context),
        width: 120,
      )
    ],
  ).show();
}
