import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants.dart';
import '../widgets/primary_btn.dart';

class Verification extends StatelessWidget {
  static const id = "verification";

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
              "Step 2/",
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
                'assets/images/undraw_private_data_7q35.png',
                width: 146.0,
                height: 159.0,
              ),
              SizedBox(height: 40.0),
              Text(
                "Verification",
                style: Theme.of(context).textTheme.headline1,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30.0),
              Text(
                "Enter the 4 digits code we sent you\n on +38 (096) 45-85-658",
                style: Theme.of(context).textTheme.bodyText1.copyWith(fontFamily: 'AvenirLTPro-Medium'),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 60.0,
                    child: TextField(
                      inputFormatters: [WhitelistingTextInputFormatter.digitsOnly, LengthLimitingTextInputFormatter(1)],
                      keyboardType: TextInputType.number,
                      decoration: kTextFieldDecoration,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20.0, fontFamily: 'AvenirLTPro-Heavy', color: kGreyDark),
                    ),
                  ),
                  SizedBox(width: 5.0),
                  SizedBox(
                    width: 60.0,
                    child: TextField(
                      inputFormatters: [WhitelistingTextInputFormatter.digitsOnly, LengthLimitingTextInputFormatter(1)],
                      keyboardType: TextInputType.number,
                      decoration: kTextFieldDecoration,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20.0, fontFamily: 'AvenirLTPro-Heavy', color: kGreyDark),
                    ),
                  ),
                  SizedBox(width: 5.0),
                  SizedBox(
                    width: 60.0,
                    child: TextField(
                      inputFormatters: [WhitelistingTextInputFormatter.digitsOnly, LengthLimitingTextInputFormatter(1)],
                      keyboardType: TextInputType.number,
                      decoration: kTextFieldDecoration,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20.0, fontFamily: 'AvenirLTPro-Heavy', color: kGreyDark),
                    ),
                  ),
                  SizedBox(width: 5.0),
                  SizedBox(
                    width: 60.0,
                    child: TextField(
                      inputFormatters: [WhitelistingTextInputFormatter.digitsOnly, LengthLimitingTextInputFormatter(1)],
                      keyboardType: TextInputType.number,
                      decoration: kTextFieldDecoration,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20.0, fontFamily: 'AvenirLTPro-Heavy', color: kGreyDark),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40.0),
              PrimaryBtn(
                btnText: "Create an account",
                press: () {
//                Navigator.push(
//                  context,
//                  MaterialPageRoute(
//                    builder: (context) => Registration(),
//                  ),
//                );
                },
              ),
              SizedBox(height: 40.0),
              Text(
                "Re-send code",
                style: TextStyle(
                  fontSize: 14.0,
                  fontFamily: 'AvenirLTPro-Heavy',
                  color: kPrimaryColor,
                  decorationThickness: 2,
                  decoration: TextDecoration.underline,
                  decorationColor: kPrimaryColor,
                  decorationStyle: TextDecorationStyle.solid,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
