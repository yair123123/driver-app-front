import 'package:hive/hive.dart';
import 'package:news_app/features/app/data/datasources/app_state_local_data_source.dart';
import 'package:news_app/features/app/data/models/app_prefs_model.dart';
import 'package:news_app/features/articles/data/data_sources/article_hive_datasource.dart';
import 'package:news_app/features/articles/data/models/article_model.dart';
import 'package:news_app/features/articles/data/models/reference_model.dart';
import 'package:news_app/features/auth/data/datasources/user_hive_data_source.dart';
import 'package:news_app/features/auth/data/models/user_model.dart';
import 'package:news_app/features/topics/data/data_source/topics_hive_ds.dart';
import 'package:news_app/features/topics/domain/entities/subtopic.dart';
import 'package:news_app/features/topics/domain/entities/topic.dart';

class HiveRegistryEntry {
  final int typeId;
  final TypeAdapter adapter;

  const HiveRegistryEntry(this.typeId, this.adapter);
}

typedef AdapterRegisterFn = void Function();

abstract final class HiveRegistry {
  static final List<AdapterRegisterFn> registerAll = [
    () => Hive.registerAdapter<ReferenceModel>(ReferenceModelAdapter()),
    () => Hive.registerAdapter<ArticleModel>(ArticleModelAdapter()),
    () => Hive.registerAdapter<UserModel>(UserModelAdapter()),
    () => Hive.registerAdapter<AppPrefsModel>(AppPrefsModelAdapter()),
    () => Hive.registerAdapter<Topic>(TopicAdapter()),
    () => Hive.registerAdapter<SubTopic>(SubTopicAdapter()),
    () => Hive.registerAdapter<AreaPrefsModel>(AreaPrefsModelAdapter()),
  ];

  // ===== All Boxes =====
  static final List<String> boxes = [
    ArticleHiveDataSource.boxName,
    TopicsHiveDatasource.boxName,
    UserHiveDataSource.boxName,
    AppPrefsLocalDataSource.boxName,
  ];

  HiveRegistry._();
}
