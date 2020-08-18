import 'package:flutter/material.dart';

class PrimaryBtn extends StatelessWidget {
  final Function press;
  final String btnText;

  PrimaryBtn({this.press, this.btnText});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Theme.of(context).primaryColor,
      padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 100.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      onPressed: press,
      child: Text(
        btnText,
        style: Theme.of(context).textTheme.bodyText1.copyWith(
              fontFamily: 'AvenirLTPro-Heavy',
              color: Colors.white,
            ),
      ),
    );
  }
}
