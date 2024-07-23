// validators.dart
String? notEmptyValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'هذا الحقل مطلوب';
  }
  return null;
}

String? emailValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'الرجاء إدخال البريد الإلكتروني';
  }
  String pattern = r'^[^@]+@[^@]+\.[^@]+';
  RegExp regex = RegExp(pattern);
  if (!regex.hasMatch(value)) {
    return 'الرجاء إدخال بريد إلكتروني صالح';
  }
  return null;
}

String? phoneNumberValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'الرجاء إدخال رقم الهاتف';
  }
  String pattern = r'^\+?[0-9]{7,15}$';
  RegExp regex = RegExp(pattern);
  if (!regex.hasMatch(value)) {
    return 'الرجاء إدخال رقم هاتف صالح';
  }
  return null;
}

String? passwordValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'الرجاء إدخال كلمة المرور';
  }
  if (value.length < 6) {
    return 'يجب أن تكون كلمة المرور على الأقل 6 أحرف';
  }
  return null;
}
