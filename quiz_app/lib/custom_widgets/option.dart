import 'package:flutter/material.dart';
import './../models/models.dart';

class OptionWidget extends StatelessWidget {
  final Option option;
  final Function(String) onOptionSelected;
  OptionWidget(this.option, {@required this.onOptionSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 40, right: 40),
      child: RaisedButton(
        color: Colors.orange,
        child: Text(
          option.optionText,
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () => {onOptionSelected(option.optionCode)},
      ),
    );
  }
}
