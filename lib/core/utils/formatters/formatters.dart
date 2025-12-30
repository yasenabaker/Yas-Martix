import 'package:intl/intl.dart';

class YFormatters {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat("dd-MMM-yyyy").format(date);
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: "en_US", symbol: '\$').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber) {
    // Assuming a 10-diget US phone number format (123) 456-7890
    if (phoneNumber.length == 10) {
      return "(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(3, 6)} ${phoneNumber.substring(6)}";
    } else if (phoneNumber.length == 11) {
      return "(${phoneNumber.substring(0, 4)}) ${phoneNumber.substring(4, 7)} ${phoneNumber.substring(7)}";
    }
    return phoneNumber;
  }

  // Not fully tested
  static String internationalFormatPhoneNumber(String phoneNumber) {
    // Remove any non-digit characters from the phone number
    var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    //Extracts the country code from the digitsOnly
    String countryCode = "+${digitsOnly.substring(0, 2)}";
    digitsOnly = digitsOnly.substring(2);

    //Add the remaining didgits with proper formatting
    final formattedNumber = StringBuffer();
    formattedNumber.write("($countryCode) ");

    int i = 0;
    while (i < digitsOnly.length) {
      int groubLength = 2;
      if (i == 0 && countryCode == "+1") {
        groubLength = 3;
      }

      int end = i + groubLength;
      formattedNumber.write(digitsOnly.substring(1, end));

      if (end < digitsOnly.length) {
        formattedNumber.write(" ");
      }
      i = end;
    }
    return digitsOnly;
  }
}
