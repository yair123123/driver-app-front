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
      isOnGroupsPage: fields[4] as bool?,
      wereMessageNewGroupsPresented: fields[5] as bool?,
      lastReadMessageByGroup: (fields[6] as Map?)?.cast<String, String>(),
      selectedAreaCode: fields[0] as String,
      selectedLangCode: fields[1] as String,
      lastReadByTopic: (fields[2] as Map?)?.cast<String, String>(),
      recentFilteredTopic: (fields[3] as List?)?.cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, AppPrefsModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.selectedAreaCode)
      ..writeByte(1)
      ..write(obj.selectedLangCode)
      ..writeByte(2)
      ..write(obj.lastReadByTopic)
      ..writeByte(3)
      ..write(obj.recentFilteredTopic)
      ..writeByte(4)
      ..write(obj.isOnGroupsPage)
      ..writeByte(5)
      ..write(obj.wereMessageNewGroupsPresented)
      ..writeByte(6)
      ..write(obj.lastReadMessageByGroup);
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
