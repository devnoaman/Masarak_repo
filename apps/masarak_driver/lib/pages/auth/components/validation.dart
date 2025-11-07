class Validation {
  static String? validatePhoneNumber(String? value) {
    final onlyNumbersRegex = RegExp(r'^\d+$');
    if (value == null || value.isEmpty) {
      return 'يرجى إدخال رقم الهاتف';
    } else if (value.length != 11 || !onlyNumbersRegex.hasMatch(value)) {
      return 'رقم الهاتف يجب ان يكون مكونا من 11 رقم';
    } else {
      return null;
    }
  }
}
