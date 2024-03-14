import 'dart:async';
import 'package:blog_app/features/auth/domain/entities/user.dart';
import 'package:blog_app/features/auth/domain/usecases/user_login.dart';
import 'package:blog_app/features/auth/domain/usecases/user_sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final UserSignUp _userSignUp;
  final UserLogin _userLogin;
  AuthBloc({
    required UserSignUp userSignUp,
    required UserLogin userLogin,
  })  : _userSignUp = userSignUp,
        _userLogin = userLogin,
        super(AuthInitial()) {
    on<AuthSignUp>(_onAuthSignUp);
    on<AuthSignIn>(_onAuthSignIn);
  }

  FutureOr<void> _onAuthSignUp(event, emit) async {
    emit(AuthLoading());
    final res = await _userSignUp(
      UserSignUpParams(
          email: event.email, password: event.password, name: event.name),
    );
    res.fold(
      (l) => emit(AuthFailure(l.message)),
      (r) => emit(AuthSuccess(r)),
    );
  }
  FutureOr<void> _onAuthSignIn(event, emit) async {
    emit(AuthLoading());
    final res = await _userLogin(
      UserLoginParams(
          email: event.email, password: event.password, ),
    );
    res.fold(
      (l) => emit(AuthFailure(l.message)),
      (r) => emit(AuthSuccess(r)),
    );
  }
}
