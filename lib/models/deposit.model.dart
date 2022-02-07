import 'package:equatable/equatable.dart';

class Deposit extends Equatable {
  final DateTime date;
  final int amount;

  const Deposit({
    required this.date,
    required this.amount,
  });

  @override
  List<Object?> get props => [date, amount];
}
