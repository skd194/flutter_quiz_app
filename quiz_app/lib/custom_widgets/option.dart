import 'package:flutter/material.dart';

class OptionWidget extends StatelessWidget {
  final String optionText;
  final Function onOptionSelected;
  OptionWidget(this.optionText, {@required this.onOptionSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 40, right: 40),
      child: RaisedButton(
        color: Colors.orange,
        child: Text(
          optionText,
          style: TextStyle(color: Colors.white),
        ),
        onPressed: onOptionSelected,
      ),
    );
  }
}
