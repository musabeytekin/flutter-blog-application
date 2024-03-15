import 'package:intl/intl.dart';

String formatDateByDMMMYYYY(DateTime date) {
  return DateFormat('d MMM, yyyy').format(date);
}
