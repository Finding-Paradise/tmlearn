// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'measurements.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MeasurementsAdapter extends TypeAdapter<Measurements> {
  @override
  final int typeId = 5;

  @override
  Measurements read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Measurements()
      ..nameRus = (fields[0] as List).cast<String>()
      ..nameTurk = (fields[1] as List).cast<String>();
  }

  @override
  void write(BinaryWriter writer, Measurements obj) {
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
      other is MeasurementsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
