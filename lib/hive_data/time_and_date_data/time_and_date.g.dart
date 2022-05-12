// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_and_date.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TimeAndDateAdapter extends TypeAdapter<TimeAndDate> {
  @override
  final int typeId = 8;

  @override
  TimeAndDate read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TimeAndDate()
      ..nameRus = (fields[0] as List).cast<String>()
      ..nameTurk = (fields[1] as List).cast<String>();
  }

  @override
  void write(BinaryWriter writer, TimeAndDate obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.nameRus)
      ..writeByte(1)
      ..write(obj.nameTurk);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TimeAndDateAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
