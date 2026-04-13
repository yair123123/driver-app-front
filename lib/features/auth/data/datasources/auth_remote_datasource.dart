import 'package:driver_app/core/error/failure.dart';
import 'package:driver_app/core/http/api_client.dart';
import 'package:driver_app/features/auth/data/models/login_request.dart';
import 'package:driver_app/features/auth/data/models/login_response.dart';
import 'package:driver_app/features/auth/data/models/user_model.dart';
import 'package:fpdart/fpdart.dart';

class AuthRemoteDataSource {
  final ApiClient client;

  AuthRemoteDataSource(this.client);

  Future<Either<Failure, LoginResponse>> login(LoginRequest request) async {
    return await client.post<LoginResponse>(
      '/auth/login',
      body: request.toJson(),
      fromJson: (res) => LoginResponse.fromJson(res),
    );
  }

  Future<Either<Failure, UserModel>> getMe() async {
    final res = await client.get(
      '/auth/me',
      fromJson: (res) => UserModel.fromJson(res),
    );
    return res;
  }
}
