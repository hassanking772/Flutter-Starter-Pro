import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_starter_pro/core/errors/failures.dart';
import 'package:flutter_starter_pro/core/usecases/usecase.dart';
import 'package:flutter_starter_pro/features/auth/domain/entities/user.dart';
import 'package:flutter_starter_pro/features/auth/domain/repositories/auth_repository.dart';

/// Use case for updating the current user's profile.
class UpdateUserUseCase implements UseCase<User, UpdateUserParams> {
  const UpdateUserUseCase(this.repository);

  final AuthRepository repository;

  @override
  Future<Either<Failure, User>> call(UpdateUserParams params) {
    return repository.updateUser(
      name: params.name,
      phoneNumber: params.phoneNumber,
      avatarUrl: params.avatarUrl,
    );
  }
}

/// Parameters for [UpdateUserUseCase].
class UpdateUserParams extends Equatable {
  const UpdateUserParams({
    this.name,
    this.phoneNumber,
    this.avatarUrl,
  });

  final String? name;
  final String? phoneNumber;
  final String? avatarUrl;

  @override
  List<Object?> get props => [name, phoneNumber, avatarUrl];
}
