import 'package:driver_app/core/http/api_client.dart';
import 'package:driver_app/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:driver_app/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:driver_app/features/auth/domain/entities/login_params.dart';
import 'package:driver_app/features/auth/domain/entities/user.dart';
import 'package:driver_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:driver_app/features/auth/domain/usecases/get_current_user_use_case.dart';
import 'package:driver_app/features/auth/domain/usecases/login_use_case.dart';
import 'package:driver_app/features/auth/presentation/notifiers/creds_notifier.dart';
import 'package:driver_app/features/auth/presentation/notifiers/user_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authRemoteDataSourceProvider = Provider<AuthRemoteDataSource>((ref) {
  return AuthRemoteDataSource(ref.watch(apiClientProvider));
});

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepositoryImpl(ref.watch(authRemoteDataSourceProvider));
});

final authLoginUseCaseProvider = Provider<LoginUseCase>((ref) {
  return LoginUseCase(ref.watch(authRepositoryProvider));
});

final getMeUseCaseProvider = Provider<GetCurrentUserUseCase>((ref) {
  return GetCurrentUserUseCase(ref.watch(authRepositoryProvider));
});



final userProvider = AsyncNotifierProvider<UserController, User?>(
  UserController.new,
);
