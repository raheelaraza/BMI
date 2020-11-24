import 'package:flutter/material.dart';

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
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color: Color(0xFF1D1E33),
                        borderRadius: BorderRadiusDirectional.circular(15.0)),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color: Color(0xFF1D1E33),
                        borderRadius: BorderRadiusDirectional.circular(15.0)),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: Color(0xFF1D1E33),
                  borderRadius: BorderRadiusDirectional.circular(15.0)),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color: Color(0xFF1D1E33),
                        borderRadius: BorderRadiusDirectional.circular(15.0)),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color: Color(0xFF1D1E33),
                        borderRadius: BorderRadiusDirectional.circular(15.0)),
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
