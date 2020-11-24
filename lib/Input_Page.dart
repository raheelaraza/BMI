import 'package:flutter/material.dart';
import 'Repeate_contanier.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'RepeateTextIcon.dart';

enum Gender {
  male,
  female,
}

const activationcolor = Color(0xFF111328);
const deactivationcolor = Color(0xFF1D1E33);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleColor = deactivationcolor;
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(Gender.male);
                      });
                    },
                    child: Repeate_contanier(
                      colors: maleColor,
                      cardWidge: RepeateTextIcon(
                        iconData: FontAwesomeIcons.male,
                        Label: "MALE",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(Gender.female);
                      });
                    },
                    child: Repeate_contanier(
                      colors: femaleColor,
                      cardWidge: RepeateTextIcon(
                        iconData: FontAwesomeIcons.female,
                        Label: "FEMALE",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Repeate_contanier(
              colors: Color(0xFF1D1E33),
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
