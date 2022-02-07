part of 'display_amount_cubit.dart';

abstract class DisplayAmountState extends Equatable {
  final List<Deposit> deposits;
  const DisplayAmountState({this.deposits = const []});

  String get totalAmount => deposits
      .fold<int>(0, (previousValue, element) => previousValue + element.amount)
      .toStringAsFixed(0);

  @override
  List<Object> get props => [deposits];
}

class DisplayAmountLoaded extends DisplayAmountState {
  const DisplayAmountLoaded([List<Deposit> deposits = const []])
      : super(deposits: deposits);
}
