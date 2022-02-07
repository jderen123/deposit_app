import 'package:deposit_app/features/home/cubit/display_amount_cubit.dart';
import 'package:deposit_app/themes/color_themes.dart';
import 'package:deposit_app/themes/text_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DepositAlertSnackBar extends StatelessWidget {
  const DepositAlertSnackBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<DisplayAmountCubit, DisplayAmountState>(
      listener: (context, state) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
            'New Deposit Added!',
            style: TextThemes.white.snackBar,
          ),
          backgroundColor: ColorThemes.purple,
        ));
      },
      child: Container(),
    );
  }
}
