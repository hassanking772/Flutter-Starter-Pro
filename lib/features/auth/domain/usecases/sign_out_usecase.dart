import 'package:dartz/dartz.dart';
import 'package:flutter_starter_pro/core/errors/failures.dart';
import 'package:flutter_starter_pro/core/usecases/usecase.dart';
import 'package:flutter_starter_pro/features/auth/domain/repositories/auth_repository.dart';

/// Use case for signing out the current user.
class SignOutUseCase implements UseCaseNoParams<Unit> {
  const SignOutUseCase(this.repository);

  final AuthRepository repository;

  @override
  Future<Either<Failure, Unit>> call() {
    return repository.signOut();
  }
}
