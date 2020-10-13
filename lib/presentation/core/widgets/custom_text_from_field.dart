import 'package:flutter/material.dart';
import 'package:simple_tooltip/simple_tooltip.dart';
import 'package:splited/application/themes/theme_bloc.dart';
import 'package:splited/injection.dart';
import 'package:splited/presentation/themes/theme_type.dart';

class CustomTextFormField extends StatefulWidget {
  final String initialValue;
  final String Function(String) validator;
  final bool obscureText;
  final String labelText;
  final void Function(String) onChanged;
  final bool enabled;
  final TextInputType keyboardType;
  final Widget tooltipContent;
  final bool showToolTip;

  const CustomTextFormField({
    Key key,
    this.initialValue,
    @required this.validator,
    this.enabled = true,
    @required this.labelText,
    this.obscureText = false,
    @required this.onChanged,
    this.keyboardType = TextInputType.text,
    this.tooltipContent = const SizedBox(),
    this.showToolTip = false,
  }) : super(key: key);

  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool _obscure;
  bool showToolTip = false;
  @override
  void initState() {
    if (widget.obscureText) {
      _obscure = true;
    } else {
      _obscure = false;
    }
    super.initState();
  }

  void onFocusChange(bool value) {
    if (widget.tooltipContent != null && widget.showToolTip) {
      setState(() {
        showToolTip = value;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 26),
      child: SimpleTooltip(
        animationDuration: const Duration(milliseconds: 200),
        hideOnTooltipTap: true,
        ballonPadding: const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
        arrowLength: 15,
        arrowBaseWidth: 30,
        arrowTipDistance: 1,
        borderColor: const Color(0xff707070),
        backgroundColor: Theme.of(context).cardColor,
        tooltipDirection: TooltipDirection.down,
        show: showToolTip,
        content: (widget.tooltipContent != null)
            ? widget.tooltipContent
            : const SizedBox(),
        child: Focus(
          onFocusChange: (value) => onFocusChange(value),
          child: TextFormField(
            keyboardType: (!widget.obscureText)
                ? widget.keyboardType
                : (_obscure)
                    ? TextInputType.text
                    : TextInputType.visiblePassword,
            obscureText: _obscure,
            initialValue: widget.initialValue,
            validator: widget.validator,
            decoration: InputDecoration(
              labelText: widget.labelText,
              suffixIcon: (widget.obscureText)
                  ? GestureDetector(
                      onTap: () {
                        setState(() {
                          _obscure = !_obscure;
                        });
                      },
                      child: Icon(
                        (_obscure) ? Icons.visibility : Icons.visibility_off,
                      ),
                    )
                  : null,
            ),
            enabled: widget.enabled,
            onChanged: widget.onChanged,
          ),
        ),
      ),
    );
  }
}
