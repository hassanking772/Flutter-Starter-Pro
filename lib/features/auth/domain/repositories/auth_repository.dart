import 'package:dartz/dartz.dart';
import 'package:flutter_starter_pro/core/errors/failures.dart';
import 'package:flutter_starter_pro/features/auth/domain/entities/user.dart';

/// Abstract repository interface for authentication operations.
///
/// This interface defines the contract for authentication-related
/// data operations. The implementation handles the actual data
/// fetching from remote and local data sources.
abstract class AuthRepository {
  /// Signs in a user with email and password.
  ///
  /// Returns [User] on success or [Failure] on error.
  Future<Either<Failure, User>> signIn({
    required String email,
    required String password,
  });

  /// Registers a new user with email, password, and name.
  ///
  /// Returns [User] on success or [Failure] on error.
  Future<Either<Failure, User>> signUp({
    required String email,
    required String password,
    required String name,
  });

  /// Signs out the current user.
  ///
  /// Returns [Unit] on success or [Failure] on error.
  Future<Either<Failure, Unit>> signOut();

  /// Gets the currently authenticated user.
  ///
  /// Returns [User] if authenticated, or [Failure] if not authenticated
  /// or an error occurs.
  Future<Either<Failure, User>> getCurrentUser();

  /// Sends a password reset email to the specified email address.
  ///
  /// Returns [Unit] on success or [Failure] on error.
  Future<Either<Failure, Unit>> forgotPassword({required String email});

  /// Updates the current user's profile information.
  ///
  /// Returns the updated [User] on success or [Failure] on error.
  Future<Either<Failure, User>> updateUser({
    String? name,
    String? phoneNumber,
    String? avatarUrl,
  });

  /// Checks if a user is currently authenticated.
  ///
  /// Returns `true` if the user has a valid session, `false` otherwise.
  Future<bool> isAuthenticated();

  /// Stream of authentication state changes.
  ///
  /// Emits the current [User] when authenticated, or `null` when
  /// not authenticated.
  Stream<User?> get authStateChanges;
}
