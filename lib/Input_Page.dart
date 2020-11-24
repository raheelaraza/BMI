import 'package:flutter/material.dart';
import 'Repeate_contanier.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'RepeateTextIcon.dart';
import 'constent_variable.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  /*Color maleColor = deactivationcolor;
  Color femaleColor = deactivationcolor;
  void updateColor(Gender genderType) {
    if (genderType == Gender.male) {
      maleColor = activationcolor;
      femaleColor = deactivationcolor;
    }
    if (genderType == Gender.female) {
      maleColor = deactivationcolor;
      femaleColor = activationcolor;
    }
  }*/
  Gender selectGender;
  int slider_height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  /*child: GestureDetector(
                    onTap: () {
                      setState(() {
                        //updateColor(Gender.male);
                        selectGender = Gender.male;
                      });
                    },*/
                  child: Repeate_contanier(
                    onpressed: () {
                      setState(
                        () {
                          selectGender = Gender.male;
                        },
                      );
                    },
                    colors: selectGender == Gender.male
                        ? activationcolor
                        : deactivationcolor,
                    cardWidge: RepeateTextIcon(
                      iconData: FontAwesomeIcons.male,
                      Label: "MALE",
                    ),
                  ),
                  // ),
                ),
                Expanded(
                  /*child: GestureDetector(
                    onTap: () {
                      setState(() {
                        //updateColor(Gender.female);
                        selectGender = Gender.female;
                      });
                    },*/

                  child: Repeate_contanier(
                    onpressed: () {
                      setState(
                        () {
                          selectGender = Gender.female;
                        },
                      );
                    },
                    colors: selectGender == Gender.female
                        ? activationcolor
                        : deactivationcolor,
                    cardWidge: RepeateTextIcon(
                      iconData: FontAwesomeIcons.female,
                      Label: "FEMALE",
                    ),
                  ),
                  //),
                ),
              ],
            ),
          ),
          Expanded(
            child: Repeate_contanier(
              colors: Color(0xFF1D1E33),
              cardWidge: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('HEIGHT', style: ConstentTextLabel),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        slider_height.toString(),
                        style: ConstentTextLabe2,
                      ),
                      Text(
                        'cm',
                        style: ConstentTextLabel,
                      ),
                    ],
                  ),
                  Slider(
                    value: slider_height.toDouble(),
                    min: 100.0,
                    max: 220.0,
                    activeColor: Colors.redAccent,
                    inactiveColor: Colors.white,
                    onChanged: (double newvalue) {
                      setState(() {
                        slider_height = newvalue.round();
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Repeate_contanier(
                    colors: Color(0xFF1D1E33),
                  ),
                ),
                Expanded(
                  child: Repeate_contanier(
                    colors: Color(0xFF1D1E33),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
