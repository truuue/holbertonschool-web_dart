class Password {
  String _password = '';

  Password({String password = ''}) {
    _password = password;
  }

  String get password => _password;

  set password(String password) {
    _password = password;
  }

  bool isValid() {
    if (_password.length < 8 || _password.length > 16) {
      return false;
    }
    if (!RegExp(r'(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])').hasMatch(_password)) {
      return false;
    }
    return true;
  }

  String toString() {
    return 'Your Password is: $_password';
  }
}