import 'package:flutter/material.dart';
import 'Repeate_contanier.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                  child: Repeate_contanier(
                    colors: Color(0xFF1D1E33),
                    cardWidge: RepeateTextIcon(
                      iconData: FontAwesomeIcons.male,
                      Label: "MALE",
                    ),
                  ),
                ),
                Expanded(
                  child: Repeate_contanier(
                    colors: Color(0xFF1D1E33),
                    cardWidge: RepeateTextIcon(
                      iconData: FontAwesomeIcons.female,
                      Label: "FEMALE",
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

class RepeateTextIcon extends StatelessWidget {
  RepeateTextIcon({@required this.iconData, this.Label});
  final IconData iconData;
  final String Label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          //FontAwesomeIcons.male,
          size: 50.0,
        ),
        SizedBox(height: 10),
        Text(
          Label,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
