import 'package:flutter/material.dart';

class PrimaryBtn extends StatelessWidget {
  final Function press;
  final String btnText;
  final EdgeInsetsGeometry padding;

  PrimaryBtn(
      {this.press,
      this.btnText,
      this.padding = const EdgeInsets.symmetric(vertical: 15.0)});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Theme.of(context).primaryColor,
      padding: padding,
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
