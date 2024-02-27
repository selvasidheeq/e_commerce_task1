class FormValidator{
  static  String? validateEmail(String? value) {

    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }
   
    if(value == null || value.isEmpty || !value.contains('@') || !value.contains('.')){
      return 'Invalid Email';
      }

    return null;
  }
  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }

    return null;
  }
}