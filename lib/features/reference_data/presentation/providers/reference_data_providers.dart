import 'package:driver_app/core/http/api_client.dart';
import 'package:driver_app/features/reference_data/data/datasources/reference_data_local_data_source.dart';
import 'package:driver_app/features/reference_data/data/datasources/reference_data_remote_data_source.dart';
import 'package:driver_app/features/reference_data/data/repositories/reference_data_repository_impl.dart';
import 'package:driver_app/features/reference_data/domain/entities/additional_message_template.dart';
import 'package:driver_app/features/reference_data/domain/entities/price_template.dart';
import 'package:driver_app/features/reference_data/domain/entities/reference_city.dart';
import 'package:driver_app/features/reference_data/domain/entities/reference_data_bundle.dart';
import 'package:driver_app/features/reference_data/domain/repositories/reference_data_repository.dart';
import 'package:driver_app/features/reference_data/domain/usecases/get_reference_data_use_case.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final referenceDataRemoteDataSourceProvider =
    Provider<ReferenceDataRemoteDataSource>((ref) {
      return ReferenceDataRemoteDataSource(ref.watch(apiClientProvider));
    });

final referenceDataLocalDataSourceProvider =
    Provider<ReferenceDataLocalDataSource>((ref) {
      return ReferenceDataLocalDataSource();
    });

final referenceDataRepositoryProvider = Provider<ReferenceDataRepository>((
  ref,
) {
  return ReferenceDataRepositoryImpl(
    ref.watch(referenceDataRemoteDataSourceProvider),
    ref.watch(referenceDataLocalDataSourceProvider),
  );
});

final getReferenceDataUseCaseProvider = Provider<GetReferenceDataUseCase>((
  ref,
) {
  return GetReferenceDataUseCase(ref.watch(referenceDataRepositoryProvider));
});

final referenceDataProvider = FutureProvider<ReferenceDataBundle>((ref) {
  return ref.watch(getReferenceDataUseCaseProvider)();
});

final citiesProvider = FutureProvider<List<ReferenceCity>>((ref) async {
  return (await ref.watch(referenceDataProvider.future)).cities;
});

final priceTemplatesProvider = FutureProvider<List<PriceTemplate>>((ref) async {
  return (await ref.watch(referenceDataProvider.future)).priceTemplates;
});

final additionalMessageTemplatesProvider =
    FutureProvider<List<AdditionalMessageTemplate>>((ref) async {
      return (await ref.watch(
        referenceDataProvider.future,
      )).additionalMessageTemplates;
    });
