import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_starter_pro/core/errors/failures.dart';
import 'package:flutter_starter_pro/core/usecases/usecase.dart';
import 'package:flutter_starter_pro/features/auth/domain/entities/user.dart';
import 'package:flutter_starter_pro/features/auth/domain/repositories/auth_repository.dart';

/// Use case for signing in a user with email and password.
class SignInUseCase implements UseCase<User, SignInParams> {
  const SignInUseCase(this.repository);

  final AuthRepository repository;

  @override
  Future<Either<Failure, User>> call(SignInParams params) {
    return repository.signIn(
      email: params.email,
      password: params.password,
    );
  }
}

/// Parameters for [SignInUseCase].
class SignInParams extends Equatable {
  const SignInParams({
    required this.email,
    required this.password,
  });

  final String email;
  final String password;

  @override
  List<Object> get props => [email, password];
}
