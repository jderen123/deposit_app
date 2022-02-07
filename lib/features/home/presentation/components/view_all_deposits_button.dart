import 'package:deposit_app/features/home/cubit/display_amount_cubit.dart';
import 'package:deposit_app/infrastructure/router/router.dart';
import 'package:deposit_app/infrastructure/router/router.gr.dart';
import 'package:deposit_app/themes/text_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ViewAllDepositsButton extends StatelessWidget {
  const ViewAllDepositsButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => router(context).push(ViewDepositsRoute(
        deposits: context.read<DisplayAmountCubit>().state.deposits,
      )),
      child: Center(
        child: Text(
          'View All Deposits',
          style: TextThemes.white.button,
        ),
      ),
    );
  }
}
