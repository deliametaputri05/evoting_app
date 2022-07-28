// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ormawa.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Ormawa _$$_OrmawaFromJson(Map<String, dynamic> json) => _$_Ormawa(
      id: json['id'] as int?,
      nama: json['nama'] as String?,
      label: json['label'] as String?,
      deskripsi: json['deskripsi'] as String?,
      logo: json['logo'] as String?,
      deletedAt: json['deleted_at'],
      createdAt: json['created_at'] as int?,
      updatedAt: json['updated_at'] as int?,
    );

Map<String, dynamic> _$$_OrmawaToJson(_$_Ormawa instance) => <String, dynamic>{
      'id': instance.id,
      'nama': instance.nama,
      'label': instance.label,
      'deskripsi': instance.deskripsi,
      'logo': instance.logo,
      'deleted_at': instance.deletedAt,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
