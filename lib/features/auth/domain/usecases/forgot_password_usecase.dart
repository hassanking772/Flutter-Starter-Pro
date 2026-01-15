import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_starter_pro/core/errors/failures.dart';
import 'package:flutter_starter_pro/core/usecases/usecase.dart';
import 'package:flutter_starter_pro/features/auth/domain/repositories/auth_repository.dart';

/// Use case for requesting a password reset email.
class ForgotPasswordUseCase implements UseCase<Unit, ForgotPasswordParams> {
  const ForgotPasswordUseCase(this.repository);

  final AuthRepository repository;

  @override
  Future<Either<Failure, Unit>> call(ForgotPasswordParams params) {
    return repository.forgotPassword(email: params.email);
  }
}

/// Parameters for [ForgotPasswordUseCase].
class ForgotPasswordParams extends Equatable {
  const ForgotPasswordParams({required this.email});

  final String email;

  @override
  List<Object> get props => [email];
}
