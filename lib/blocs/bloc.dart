import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_project_iti/firebase/auth.dart';
import 'event.dart';
import 'state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({required AuthRepository authRepository}) : super(AuthInitial()) {
    on<AuthSignUpRequested>((event, emit) async {
      emit(AuthLoading());
      try {
        // sign up logic
        emit(AuthSuccess());
      } catch (e) {
        emit(AuthFailure("Sign up failed: $e"));
      }
    });

    // Add other handlers here if needed
  }
}
