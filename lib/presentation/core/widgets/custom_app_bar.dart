import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:splited/presentation/resources/resources.dart';

class CustomAppBar extends StatelessWidget {
  final IconData icon;
  final Function onIconPressed;
  final String title;
  final IconData suffixIcon;
  final Function onSuffixPressed;
  final String subtitle;

  const CustomAppBar({
    @required this.icon,
    @required this.onIconPressed,
    @required this.title,
    this.suffixIcon,
    this.onSuffixPressed,
    this.subtitle = "",
  });
  const CustomAppBar.back({
    this.icon = Icons.arrow_back,
    @required this.onIconPressed,
    @required this.title,
    this.suffixIcon,
    this.onSuffixPressed,
    this.subtitle = "",
  });
  const CustomAppBar.onlyTitle({
    this.icon,
    this.onIconPressed,
    @required this.title,
    this.suffixIcon,
    this.onSuffixPressed,
    this.subtitle = "",
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        if (icon != null && onIconPressed != null)
          GestureDetector(
            onTap: () => onIconPressed(),
            child: Stack(
              alignment: Alignment.centerLeft,
              children: <Widget>[
                Container(
                    height: 57,
                    width: 76,
                    child: Image.asset(CoreAssets.backbutton)),
                Positioned(
                  left: 11.0,
                  top: 8.0,
                  child: Icon(
                    icon,
                    size: 32.0,
                    color: const Color(0xffEBEBEB),
                  ),
                ),
              ],
            ),
          )
        else
          Container(
              height: 57, width: 76, child: Image.asset(CoreAssets.backbutton)),
        Expanded(
            child: Column(
          children: <Widget>[
            Text(
              title,
              style: Theme.of(context).textTheme.headline6,
              textAlign: TextAlign.center,
            ),
            Text(
              subtitle,
              style: Theme.of(context).textTheme.headline6.copyWith(
                    fontSize: 11,
                  ),
              textAlign: TextAlign.center,
            ),
          ],
        )),
        if (suffixIcon != null && onSuffixPressed != null)
          GestureDetector(
            onTap: () => onSuffixPressed(),
            child: Stack(
              alignment: Alignment.centerLeft,
              children: <Widget>[
                Container(
                    height: 57,
                    width: 76,
                    child: Image.asset(CoreAssets.suffixbutton)),
                Positioned(
                  right: 11.0,
                  top: 8.0,
                  child: Icon(
                    suffixIcon,
                    size: 32.0,
                    color: const Color(0xffEBEBEB),
                  ),
                ),
              ],
            ),
          )
        else
          const SizedBox(width: 76)
      ],
    );
  }
}
