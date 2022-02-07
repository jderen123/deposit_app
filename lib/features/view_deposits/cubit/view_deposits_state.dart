part of 'view_deposits_cubit.dart';

class ViewDepositsState extends Equatable {
  final List<Deposit> deposits;
  const ViewDepositsState({this.deposits = const []});

  

  @override
  List<Object> get props => [deposits];
}
