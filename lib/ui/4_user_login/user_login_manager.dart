import 'dart:async';

class UserLoginManager {
  static final UserLoginManager _instance = UserLoginManager._internal();
  factory UserLoginManager() => _instance;
  UserLoginManager._internal();

  bool _isLoggedIn = false;
  bool get isLoggedIn => _isLoggedIn;

  Future<bool> login({required String email, required String password}) async {
    print("Attempting login for: $email");
    await Future.delayed(const Duration(seconds: 2));
    
    _isLoggedIn = true;
    return true; 
  }

  Future<bool> signUp({
    required String name,
    required String email,
    required String password,
  }) async {
    print("Attempting signup for: $email");
    await Future.delayed(const Duration(seconds: 2));

    return true;
  }

  Future<void> logout() async {
    print("Logging out...");
    await Future.delayed(const Duration(milliseconds: 500));
    _isLoggedIn = false;
  }

  Future<bool> checkAuthStatus() async {
    return _isLoggedIn;
  }
}