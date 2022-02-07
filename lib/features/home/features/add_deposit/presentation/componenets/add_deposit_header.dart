import 'package:deposit_app/infrastructure/router/router.dart';
import 'package:deposit_app/themes/color_themes.dart';
import 'package:deposit_app/themes/text_themes.dart';
import 'package:flutter/material.dart';

class AddDepositHeader extends StatelessWidget {
  const AddDepositHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text(
              'New Deposit',
              style: TextThemes.base.header1,
            ),
          ),
        ),
        Positioned(
          child: Container(
            padding: const EdgeInsets.only(top: 10, right: 6),
            alignment: Alignment.bottomRight,
            child: TextButton(
                onPressed: () => router(context).pop(),
                child: Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    color: ColorThemes.grey.lighten(.2),
                    borderRadius: BorderRadius.circular(36),
                  ),
                  child: Icon(
                    Icons.close_rounded,
                    color: ColorThemes.darkGrey,
                    size: 20,
                  ),
                )),
          ),
        )
      ],
    );
  }
}
