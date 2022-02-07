import 'package:deposit_app/features/home/features/add_deposit/cubit/add_deposit_cubit.dart';
import 'package:deposit_app/features/home/features/add_deposit/presentation/componenets/add_deposit_button.dart';
import 'package:deposit_app/features/home/features/add_deposit/presentation/componenets/add_deposit_header.dart';
import 'package:deposit_app/features/home/features/add_deposit/presentation/componenets/date_picker.dart';
import 'package:deposit_app/features/home/features/add_deposit/presentation/componenets/deposit_input_field.dart';
import 'package:deposit_app/themes/text_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddDepositBottomSheet<T> extends StatefulWidget {
  AddDepositBottomSheet({
    Key? key,
    this.deposit,
  }) : super(key: key);

  final T? deposit;
  final formKey = GlobalKey<FormState>();

  Future<T?> open(BuildContext context) {
    return showModalBottomSheet<T?>(
      context: context,
      isDismissible: true,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) {
        return this;
      },
    );
  }

  @override
  _AddDepositBottomSheetState createState() => _AddDepositBottomSheetState();
}

class _AddDepositBottomSheetState extends State<AddDepositBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<AddDepositCubit>(
      create: (_) => AddDepositCubit(),
      child: _AddDepositBottomSheet(
        formKey: widget.formKey,
      ),
    );
  }
}

class _AddDepositBottomSheet extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  const _AddDepositBottomSheet({
    Key? key,
    required this.formKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            const AddDepositHeader(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Date',
                    style: TextThemes.base.smallBold,
                  ),
                  const DatePicker(),
                  const SizedBox(height: 10),
                  Text(
                    'Amount',
                    style: TextThemes.base.smallBold,
                  ),
                  const SizedBox(height: 4),
                  DepositInputField(
                    formKey: formKey,
                  ),
                  const SizedBox(height: 20),
                  AddDepositButton(
                    formKey: formKey,
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            )
          ],
        ));
  }
}
