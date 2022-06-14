import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//this is used to change the app flat button appearance based on IOS/Andriod

class AdaptiveFlatButton extends StatelessWidget {
  final String text;
  final VoidCallback handler;

  const AdaptiveFlatButton(this.text, this.handler, {Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            onPressed: handler,
            child: Text(
              text,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          )
        : TextButton(
            onPressed: handler,
            child: Text(text),
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontWeight: FontWeight.bold),
              primary: Theme.of(context).primaryColor,
            ),
          );
  }
}
