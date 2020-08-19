import 'package:day_health/constants.dart';
import 'package:flutter/material.dart';

import 'app.dart';
import 'screens/profile.dart';
import 'screens/registration.dart';
import 'screens/verification.dart';

void main() {
  runApp(DayHealth());
}

class DayHealth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: App.id,
        routes: {
          App.id: (context) => App(),
          Registration.id: (context) => Registration(),
          Verification.id: (context) => Verification(),
          Profile.id: (context) => Profile(),
        },
        theme: ThemeData(
          primaryColor: kPrimaryColor,
          accentColor: kLightBlue,
          fontFamily: 'AvenirLTPro-Book',
          textTheme: TextTheme(
            headline1: TextStyle(fontSize: 24.0, fontFamily: 'AvenirLTPro-Heavy', color: kGreyDark),
            bodyText1: TextStyle(fontSize: 14.0, color: kGreyDark),
          ),
        ),
        home: App());
  }
}
