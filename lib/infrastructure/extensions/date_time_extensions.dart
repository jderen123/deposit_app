import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  static String formatDateTime(DateTime date) =>
      DateFormat('MM/dd/yyyy').format(date);
}
