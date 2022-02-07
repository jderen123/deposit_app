import 'package:deposit_app/themes/color_themes.dart';
import 'package:flutter/material.dart';

class DepositsGreyDivider extends StatelessWidget {
  const DepositsGreyDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      width: double.infinity,
      color: ColorThemes.darkGrey,
    );
  }
}
