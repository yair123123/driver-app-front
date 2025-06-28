import 'package:driver_app/features/bootstrap/domain/repositories/app_initial_repository.dart';

class GetSavedToken {
  final AppInitialRepository authRepository;
  GetSavedToken(this.authRepository);

  Future<String?> call() async{
    return await authRepository.getSavedToken();
  }

}