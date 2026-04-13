import 'package:driver_app/features/reference_data/data/models/reference_data_bundle_model.dart';
import 'package:driver_app/utils/json_util.dart';

class ReferenceDataLocalDataSource {
  Future<ReferenceDataBundleModel> loadReferenceData() async {
    final citiesJson = await loadJsonList('assets/cities.json');
    final pricesJson = await loadJsonMap<List<int>>(
      'assets/prices.json',
      (value) => List<int>.from(
        (value as List<dynamic>).map((item) => int.parse(item.toString())),
      ),
    );
    final commentsJson = await loadStringList('assets/comments.json');

    return ReferenceDataBundleModel.fromJson({
      'cities': citiesJson,
      'prices': pricesJson,
      'comments': commentsJson,
    });
  }
}
