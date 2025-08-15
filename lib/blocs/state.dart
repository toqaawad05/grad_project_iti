abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthSuccess extends AuthState {
  get user => null;
}

class AuthFailure extends AuthState {
  final String error;
   String get message => "error.";
  

  AuthFailure(this.error);
}
/*abstract class AuthState {
  String get message;
}

class AuthInitiall extends AuthState {
  @override
  String get message => "The email address is invalid.";
}

class AuthLoading  extends AuthState {
  @override
  String get message => "The password is incorrect.";
}

class AuthUserNotFound extends AuthState {
  @override
  String get message => "No user found with this email.";
}
*/