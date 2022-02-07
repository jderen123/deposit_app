import 'package:auto_size_text/auto_size_text.dart';
import 'package:deposit_app/features/home/cubit/display_amount_cubit.dart';
import 'package:deposit_app/themes/text_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TotalSavingsCard extends StatelessWidget {
  const TotalSavingsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.8,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 3,
                offset: const Offset(0, 3),
              ),
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(top: 20),
                alignment: Alignment.topCenter,
                child: Text(
                  'Total Savings',
                  style: TextThemes.base.header1,
                ),
              ),
            ),
            BlocBuilder<DisplayAmountCubit, DisplayAmountState>(
              builder: (context, state) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AutoSizeText(
                    '\$${state.totalAmount}',
                    style: TextThemes.base.boldHeader,
                    maxLines: 1,
                  ),
                );
              },
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
