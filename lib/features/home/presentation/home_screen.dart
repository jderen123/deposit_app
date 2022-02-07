import 'package:deposit_app/features/home/cubit/display_amount_cubit.dart';
import 'package:deposit_app/features/home/features/add_deposit/presentation/add_deposit_bottom_sheet.dart';
import 'package:deposit_app/features/home/presentation/components/deposit_alert_snack_bar.dart';
import 'package:deposit_app/features/home/presentation/components/total_savings_card.dart';
import 'package:deposit_app/features/home/presentation/components/view_all_deposits_button.dart';
import 'package:deposit_app/models/deposit.model.dart';
import 'package:deposit_app/themes/color_themes.dart';
import 'package:deposit_app/themes/text_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<DisplayAmountCubit>(
      create: (_) => DisplayAmountCubit(),
      child: _HomeScreen(),
    );
  }
}

class _HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Deposit App',
          style: TextThemes.base.appBar,
        ),
        actions: [
          TextButton(
              onPressed: () async {
                final Deposit? deposit =
                    await  AddDepositBottomSheet().open(context);
                if (deposit == null) return;
                context.read<DisplayAmountCubit>().addDeposit(deposit);
              },
              child: Icon(
                Icons.add,
                color: ColorThemes.grey,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            TotalSavingsCard(),
            SizedBox(
              height: 20,
            ),
            ViewAllDepositsButton(),
            DepositAlertSnackBar()
          ],
        ),
      ),
    );
  }
}
