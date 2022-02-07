import 'package:deposit_app/features/view_deposits/cubit/view_deposits_cubit.dart';
import 'package:deposit_app/features/view_deposits/presentation/components/deposits_grey_divider.dart';
import 'package:deposit_app/features/view_deposits/presentation/components/deposits_list.dart';
import 'package:deposit_app/models/deposit.model.dart';
import 'package:deposit_app/themes/text_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ViewDepositsScreen extends StatelessWidget {
  final List<Deposit> deposits;

  const ViewDepositsScreen({Key? key, required this.deposits})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ViewDepositsCubit>(
      create: (_) => ViewDepositsCubit()..init(deposits),
      child: _ViewDepositsScreen(
        deposits: deposits,
      ),
    );
  }
}

class _ViewDepositsScreen extends StatefulWidget {
  const _ViewDepositsScreen({Key? key, required this.deposits})
      : super(key: key);

  final List<Deposit> deposits;

  @override
  _ViewDepositsScreenState createState() => _ViewDepositsScreenState();
}

class _ViewDepositsScreenState extends State<_ViewDepositsScreen> {
  @override
  void didChangeDependencies() {
    context.read<ViewDepositsCubit>().init(widget.deposits);

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'All Deposits',
          style: TextThemes.base.appBar,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              DepositsList(
                deposits: widget.deposits,
              ),
              if (widget.deposits.isNotEmpty) const DepositsGreyDivider(),
              const SizedBox(height: 100)
            ],
          ),
        ),
      ),
    );
  }
}
