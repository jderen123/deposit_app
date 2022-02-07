import 'package:bloc/bloc.dart';
import 'package:deposit_app/models/deposit.model.dart';
import 'package:equatable/equatable.dart';

part 'add_deposit_state.dart';

class AddDepositCubit extends Cubit<AddDepositState> {
  AddDepositCubit() : super(const AddDepositState());

  Deposit? submit() {
    var date = state.date;

    date ??= DateTime.now();

    final amount = state.amount;

    if (amount == 0) {
      return null;
    }

    return Deposit(
      date: date,
      amount: amount,
    );
  }

  void updateDate(DateTime date) {
    emit(AddDepositState(
      date: date,
      amount: state.amount,
    ));
  }

  void updateDepositAmount(String value) {
    if (value == '') {
      emit(AddDepositState(date: state.date));

      return;
    }

    final updatedValue = value.replaceAll('\$', '').replaceAll(',', '');

    final amount = int.parse(updatedValue);

    emit(AddDepositState(
      amount: amount,
      date: state.date,
    ));
  }
}
