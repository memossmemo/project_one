String? validateInput(String value, String type) {
  if (value.trim().isEmpty) {
    return 'هذا الحقل مطلوب';
  }

  switch (type) {
    case 'email':
      final emailRegex = RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$");
      if (!emailRegex.hasMatch(value)) {
        return 'يرجى إدخال بريد إلكتروني صحيح';
      }
      break;
    case 'name':
      final passwordRegex = RegExp(r'^[a-zA-Z]+$');
      if (!passwordRegex.hasMatch(value)) {
        return 'الاسم يجب أن يحتوي على أحرف إنجليزية فقط';
      }
      break;

    case 'password':
      final passwordRegex =
          RegExp(r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[!@#\$&*~]).{8,}$');
      if (!passwordRegex.hasMatch(value)) {
        return ' كلمة المرور ضعيفة';
      }
      break;

    case 'username':
      if (value.length < 3) {
        return 'اسم المستخدم يجب أن يكون 3 أحرف على الأقل';
      }
      if (!RegExp(r"^[a-zA-Z0-9_]+$").hasMatch(value)) {
        return 'اسم المستخدم يجب أن يحتوي فقط على أحرف أو أرقام أو (_)';
      }
      break;

    default:
      return null;
  }

  return null;
}
