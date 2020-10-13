import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SingleDigitTextField extends StatelessWidget {
  final Function onChanged;

  const SingleDigitTextField({Key key, this.onChanged}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 51,
      padding: EdgeInsets.zero,
      margin: EdgeInsets.zero,
      child: TextFormField(
        initialValue: "",
        maxLength: 1,
        buildCounter: (BuildContext context,
            {int currentLength, bool isFocused, int maxLength}) {
          return const SizedBox();
        },
        keyboardType: TextInputType.number,
        style: Theme.of(context).textTheme.bodyText1.copyWith(
              color: Colors.white,
              fontSize: 15,
            ),
        showCursor: false,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(3.5, 27, 0, 0),
          labelText: "",
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xff247DBA),
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xffBA4D24),
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(12),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xffEBEBEB),
            ),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onChanged: (String value) {
          print("singleDigitTextField");
          onChanged(value);
        },
      ),
    );
  }
}
