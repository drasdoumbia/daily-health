import 'package:day_health/screens/registration.dart';
import 'package:flutter/material.dart';

import 'widgets/primary_btn.dart';

class App extends StatelessWidget {
  static const id = "app";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: PrimaryBtn(
            btnText: "Register",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Registration()),
              );
            },
          ),
        ),
      ),
    );
  }
}
