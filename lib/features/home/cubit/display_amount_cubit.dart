import 'package:bloc/bloc.dart';
import 'package:deposit_app/models/deposit.model.dart';
import 'package:equatable/equatable.dart';

part 'display_amount_state.dart';

class DisplayAmountCubit extends Cubit<DisplayAmountState> {
  DisplayAmountCubit() : super(const DisplayAmountLoaded());

  void addDeposit(Deposit deposit) {
    final deposits = List<Deposit>.from(state.deposits)..add(deposit);

    emit(DisplayAmountLoaded(deposits));
  }
}
