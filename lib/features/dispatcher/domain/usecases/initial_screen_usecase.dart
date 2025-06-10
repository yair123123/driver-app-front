import 'package:driver_app/features/dispatcher/domain/entities/initail_screen.dart';
import 'package:driver_app/features/dispatcher/domain/repositories/dispatch_repository.dart';

class InitialScreenUsecase {
  final DispatchRepository repository;
  InitialScreenUsecase(this.repository);

  Future<InitialScreen> call(){
    return repository.initialScreen();
  } 
}