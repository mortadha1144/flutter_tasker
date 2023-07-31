import 'package:intl/intl.dart';

String formatDate({required String date}) =>
      DateFormat('yyyy-MM-dd').format(DateTime.parse(date));