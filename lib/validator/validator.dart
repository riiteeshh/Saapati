String? validateEmail(String? value) {
  if (value == null || value.isEmpty) {
    return 'Field can\'t be empty';
  }
  return null;
}

String? validatePassword(String? value) {
  if (value == null || value.isEmpty) {
    return 'Field can\'t be empty';
  }
  return null;
}
