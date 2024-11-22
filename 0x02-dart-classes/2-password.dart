class Password {
  String password = "";

  bool isValid() {
    if (password.length < 8 || password.length > 16) {
      return false;
    }
    if (!RegExp(r'(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])').hasMatch(password)) {
      return false;
    }
    return true;
  }

  String toString() {
    return "Your Password is: $password";
  }
}