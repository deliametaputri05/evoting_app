// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ormawa_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrmawaModel _$$_OrmawaModelFromJson(Map<String, dynamic> json) =>
    _$_OrmawaModel(
      id: json['id'] as int?,
      nama: json['nama'] as String?,
      logo: json['logo'] as String?,
      deletedAt: json['deleted_at'],
      createdAt: json['created_at'] as int?,
      updatedAt: json['updated_at'] as int?,
    );

Map<String, dynamic> _$$_OrmawaModelToJson(_$_OrmawaModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nama': instance.nama,
      'logo': instance.logo,
      'deleted_at': instance.deletedAt,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
