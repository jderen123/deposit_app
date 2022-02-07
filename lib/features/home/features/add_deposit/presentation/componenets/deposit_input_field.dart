import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:deposit_app/features/home/features/add_deposit/cubit/add_deposit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DepositInputField extends StatelessWidget {
  const DepositInputField({
    Key? key,
    required this.formKey,
  }) : super(key: key);
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: TextFormField(
        onChanged: (amount) {
          context.read<AddDepositCubit>().updateDepositAmount(amount);
        },
        keyboardType: TextInputType.number,
        validator: (value) {
          if (value == '') {
            return 'Please Enter A Deposit Amount';
          }
          return null;
        },
        inputFormatters: <TextInputFormatter>[
          CurrencyTextInputFormatter(symbol: '\$', decimalDigits: 0),
        ],
        decoration: const InputDecoration(
          hintText: 'Enter Deposit Amount',
        ),
      ),
    );
  }
}
