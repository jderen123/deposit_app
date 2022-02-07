part of 'add_deposit_cubit.dart';

class AddDepositState extends Equatable {
  const AddDepositState({
    this.date,
    this.amount = 0,
  });

  final DateTime? date;
  final int amount;

  @override
  List<Object> get props => [amount];
}
