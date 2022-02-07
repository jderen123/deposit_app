import 'package:deposit_app/features/view_deposits/presentation/components/deposits_full_divider.dart';
import 'package:deposit_app/infrastructure/extensions/date_time_extensions.dart';
import 'package:deposit_app/models/deposit.model.dart';
import 'package:deposit_app/themes/text_themes.dart';
import 'package:flutter/material.dart';

class DepositsList extends StatelessWidget {
  const DepositsList({
    Key? key,
    required this.deposits,
  }) : super(key: key);

  final List<Deposit> deposits;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 25, bottom: 16),
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (BuildContext context, int index) {
          final deposit = deposits[index];

          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                DateTimeExtension.formatDateTime(deposit.date),
                style: TextThemes.base.deposits,
              ),
              Text(
                '\$${deposit.amount.toString()}',
                style: TextThemes.base.deposits,
              )
            ],
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const DepositsFullDivider();
        },
        itemCount: deposits.length,
      ),
    );
  }
}
