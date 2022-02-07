import 'package:deposit_app/features/view_deposits/presentation/components/deposits_grey_divider.dart';
import 'package:flutter/material.dart';

class DepositsFullDivider extends StatelessWidget {
  const DepositsFullDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(height: 16),
        DepositsGreyDivider(),
        SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
