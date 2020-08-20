import 'package:flutter/material.dart';

import '../app.dart';
import '../widgets/primary_btn.dart';

class Success extends StatelessWidget {
  static const id = "success";

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
              "Step 3/",
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
                'assets/images/undraw_working_out_6psf.png',
                width: 146.0,
                height: 159.0,
              ),
              SizedBox(height: 50.0),
              Text(
                "Done",
                style: Theme.of(context).textTheme.headline1,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30.0),
              Text(
                "Congratulations! Now you can workout\n with our app, enjoy it!",
                style: Theme.of(context).textTheme.bodyText1.copyWith(fontFamily: 'AvenirLTPro-Medium'),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 70.0),
              PrimaryBtn(
                btnText: "Get started",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => App(),
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
