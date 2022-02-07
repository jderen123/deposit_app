import 'package:deposit_app/features/home/features/add_deposit/cubit/add_deposit_cubit.dart';
import 'package:deposit_app/infrastructure/router/router.dart';
import 'package:deposit_app/themes/text_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddDepositButton extends StatelessWidget {
  const AddDepositButton({
    Key? key,
    required this.formKey,
  }) : super(key: key);

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        final valid = formKey.currentState?.validate() ?? false;

        if (!valid) return;

        router(context).pop(context.read<AddDepositCubit>().submit());
      },
      child: Text(
        'Add A Deposit',
        style: TextThemes.white.button,
      ),
    );
  }
}
