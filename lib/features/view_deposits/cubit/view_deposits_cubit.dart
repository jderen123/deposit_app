import 'package:bloc/bloc.dart';
import 'package:deposit_app/models/deposit.model.dart';
import 'package:equatable/equatable.dart';

part 'view_deposits_state.dart';

class ViewDepositsCubit extends Cubit<ViewDepositsState> {
  ViewDepositsCubit() : super(const ViewDepositsState());

  void init(List<Deposit> deposits) {
    emit(ViewDepositsState(deposits: deposits));
  }
}
