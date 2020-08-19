import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/primary_btn.dart';
import 'verification.dart';

class Registration extends StatelessWidget {
  static const id = "registration";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
                icon: Image.asset('assets/icons/arrow_back.png'),
                onPressed: () {
                  Navigator.pop(context);
                });
          },
        ),
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Step 1/",
              style: Theme.of(context).textTheme.bodyText1.copyWith(fontFamily: 'AvenirLTPro-Heavy'),
            ),
            Text("3", style: Theme.of(context).textTheme.bodyText1),
          ],
        ),
        actions: [FlatButton()],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 70.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                'assets/images/undraw_yoga_248n.png',
                width: 146.0,
                height: 159.0,
              ),
              SizedBox(height: 40.0),
              Text(
                "Registration",
                style: Theme.of(context).textTheme.headline1,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30.0),
              Text(
                "Enter your e-mail and password. We’ll send\n you a verification code",
                style: Theme.of(context).textTheme.bodyText1.copyWith(fontFamily: 'AvenirLTPro-Medium'),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30.0),
              TextField(
                decoration: kTextFieldDecoration.copyWith(
                  labelText: "Phone",
                  hintText: "Phone number",
                ),
              ),
              SizedBox(height: 20.0),
              TextField(
                obscureText: true,
                decoration: kTextFieldDecoration.copyWith(
                  labelText: "Password",
                  hintText: "Password here",
                ),
              ),
              SizedBox(height: 40.0),
              PrimaryBtn(
                btnText: "Register",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Verification(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
