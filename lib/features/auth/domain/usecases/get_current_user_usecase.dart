import 'package:dartz/dartz.dart';
import 'package:flutter_starter_pro/core/errors/failures.dart';
import 'package:flutter_starter_pro/core/usecases/usecase.dart';
import 'package:flutter_starter_pro/features/auth/domain/entities/user.dart';
import 'package:flutter_starter_pro/features/auth/domain/repositories/auth_repository.dart';

/// Use case for getting the currently authenticated user.
class GetCurrentUserUseCase implements UseCaseNoParams<User> {
  const GetCurrentUserUseCase(this.repository);

  final AuthRepository repository;

  @override
  Future<Either<Failure, User>> call() {
    return repository.getCurrentUser();
  }
}
