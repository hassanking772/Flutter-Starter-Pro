import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_starter_pro/core/errors/failures.dart';
import 'package:flutter_starter_pro/core/usecases/usecase.dart';
import 'package:flutter_starter_pro/features/auth/domain/entities/user.dart';
import 'package:flutter_starter_pro/features/auth/domain/repositories/auth_repository.dart';

/// Use case for registering a new user.
class SignUpUseCase implements UseCase<User, SignUpParams> {
  const SignUpUseCase(this.repository);

  final AuthRepository repository;

  @override
  Future<Either<Failure, User>> call(SignUpParams params) {
    return repository.signUp(
      email: params.email,
      password: params.password,
      name: params.name,
    );
  }
}

/// Parameters for [SignUpUseCase].
class SignUpParams extends Equatable {
  const SignUpParams({
    required this.email,
    required this.password,
    required this.name,
  });

  final String email;
  final String password;
  final String name;

  @override
  List<Object> get props => [email, password, name];
}
