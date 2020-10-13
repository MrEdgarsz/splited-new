import 'package:flutter/material.dart';
import 'package:splited/presentation/core/widgets/single_digit_text_field.dart';

class SingleDigitTextFieldForm extends StatefulWidget {
  final Function onChanged;
  final int length;
  final bool showError;
  final String errorMessage;

  const SingleDigitTextFieldForm({
    Key key,
    @required this.onChanged,
    @required this.length,
    @required this.showError,
    @required this.errorMessage,
  }) : super(key: key);

  const SingleDigitTextFieldForm.verificationCode({
    Key key,
    @required this.onChanged,
    this.length = 6,
    @required this.showError,
    this.errorMessage = "Wypełnij wszystkie pola",
  }) : super(key: key);

  @override
  _SingleDigitTextFieldFormState createState() =>
      _SingleDigitTextFieldFormState();
}

class _SingleDigitTextFieldFormState extends State<SingleDigitTextFieldForm> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> tempSingleDigitTextFieldList = [];
    for (var i = 0; i < widget.length; i++) {
      if (i < widget.length - 1) {
        tempSingleDigitTextFieldList.add(
          SingleDigitTextField(
            onChanged: (String value) {
              widget.onChanged(i, value);
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
          ),
        );
        tempSingleDigitTextFieldList.add(const SizedBox(width: 15));
      } else {
        tempSingleDigitTextFieldList.add(
          SingleDigitTextField(
            onChanged: (String value) {
              widget.onChanged(i, value);
              if (value.length == 1) {
                FocusScope.of(context).unfocus();
              }
            },
          ),
        );
      }
    }
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: tempSingleDigitTextFieldList,
        ),
        if (widget.showError)
          Text(
            widget.errorMessage,
            style: Theme.of(context).textTheme.bodyText1.copyWith(
                color: const Color(0xffBA4D24),
                fontSize: 13,
                fontWeight: FontWeight.normal),
          )
        else
          const SizedBox(),
      ],
    );
  }
}
