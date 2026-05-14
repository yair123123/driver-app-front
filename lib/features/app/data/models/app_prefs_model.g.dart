// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_prefs_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AppPrefsModelAdapter extends TypeAdapter<AppPrefsModel> {
  @override
  final int typeId = 21;

  @override
  AppPrefsModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AppPrefsModel(
      lastReadByTopic: (fields[0] as Map).cast<String, String>(),
      recentFilteredTopic: (fields[1] as List).cast<String>(),
      isOnGroupsPage: fields[2] as bool,
      wereMessageNewGroupsPresented: fields[3] as bool,
      lastReadMessageByGroup: (fields[4] as Map).cast<String, String>(),
      permissionsOnboardingCompleted: fields[5] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, AppPrefsModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.lastReadByTopic)
      ..writeByte(1)
      ..write(obj.recentFilteredTopic)
      ..writeByte(2)
      ..write(obj.isOnGroupsPage)
      ..writeByte(3)
      ..write(obj.wereMessageNewGroupsPresented)
      ..writeByte(4)
      ..write(obj.lastReadMessageByGroup)
      ..writeByte(5)
      ..write(obj.permissionsOnboardingCompleted);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppPrefsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
