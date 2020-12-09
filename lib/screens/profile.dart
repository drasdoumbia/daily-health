import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants.dart';
import '../widgets/primary_btn.dart';
import 'success.dart';

class Profile extends StatefulWidget {
  static const id = "profile";

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final List<String> _goals = [
    "select your goal",
    "Lose weight",
    "Stay healthy",
    "Practice passion",
  ];

  final List<String> _workoutNumber = [
    "select your routine",
    "One time a week",
    "Two times a week",
    "Three times a week",
  ];

  String currentSelectedGoal;
  String currentSelectedValue;

  @override
  void initState() {
    super.initState();
    currentSelectedGoal = _goals[0];
    currentSelectedValue = _workoutNumber[0];
  }

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
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .copyWith(fontFamily: 'AvenirLTPro-Heavy'),
            ),
            Text("3", style: Theme.of(context).textTheme.bodyText1),
          ],
        ),
        actions: [FlatButton()],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/undraw_fitness_stats_sht6.png',
                width: 146.0,
                height: 159.0,
              ),
              SizedBox(height: 40.0),
              Text(
                "My information",
                style: Theme.of(context).textTheme.headline1,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30.0),
              Text(
                "Add your fitness information at this stage",
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(fontFamily: 'AvenirLTPro-Medium'),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 126.0,
                    child: TextField(
                      inputFormatters: [
                        WhitelistingTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(3)
                      ],
                      keyboardType: TextInputType.number,
                      decoration:
                          kTextFieldDecoration.copyWith(labelText: "My age"),
                      style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'AvenirLTPro-Heavy',
                          color: kGreyDark),
                    ),
                  ),
                  SizedBox(width: 5.0),
                  SizedBox(
                    width: 126.0,
                    child: TextField(
                      inputFormatters: [
                        WhitelistingTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(3)
                      ],
                      keyboardType: TextInputType.number,
                      decoration:
                          kTextFieldDecoration.copyWith(labelText: "My weight"),
                      style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'AvenirLTPro-Heavy',
                          color: kGreyDark),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 5.0),
              SizedBox(
                width: 260.0,
                child: InputDecorator(
                  decoration: InputDecoration(
                    labelText: "My goal",
                    labelStyle: TextStyle(
                        fontSize: 13.0,
                        fontFamily: 'AvenirLTPro-Heavy',
                        color: kLightBlue),
                    border: InputBorder.none,
                  ),
                  isEmpty: currentSelectedGoal == " ",
                  child: DropdownButton(
                    isExpanded: true,
                    hint: Text("select your goal"),
                    value: currentSelectedGoal,
                    items: _goals.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String value) {
                      setState(() {
                        currentSelectedGoal = value;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(width: 5.0),
              SizedBox(
                width: 260.0,
                child: InputDecorator(
                  decoration: InputDecoration(
                    labelText: "My Number of workouts per week",
                    labelStyle: TextStyle(
                        fontSize: 13.0,
                        fontFamily: 'AvenirLTPro-Heavy',
                        color: kLightBlue),
                    border: InputBorder.none,
                  ),
                  isEmpty: currentSelectedValue == " ",
                  child: DropdownButton(
                    isExpanded: true,
                    hint: Text("select your routine"),
                    value: currentSelectedValue,
                    items: _workoutNumber.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String value) {
                      setState(() {
                        currentSelectedValue = value;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: 40.0),
              Container(
                width: 260.0,
                child: PrimaryBtn(
                  btnText: "Add my information",
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Success(),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 40.0),
              Text(
                "Skip",
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
