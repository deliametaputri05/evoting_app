// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pemira_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PemiraModel _$$_PemiraModelFromJson(Map<String, dynamic> json) =>
    _$_PemiraModel(
      id: json['id'] as int?,
      idOrmawa: json['id_ormawa'] as int?,
      nama: json['nama'] as String?,
      foto: json['foto'] as String?,
      deskripsi: json['deskripsi'] as String?,
      tanggal: json['tanggal'] as String?,
      waktuMulai: json['waktu_mulai'] as String?,
      waktuSelesai: json['waktu_selesai'] as String?,
      deletedAt: json['deleted_at'],
      createdAt: json['created_at'] as int?,
      updatedAt: json['updated_at'] as int?,
      ormawa: json['ormawa'] == null
          ? null
          : Ormawa.fromJson(json['ormawa'] as Map<String, dynamic>),
      voting: json['voting'] == null
          ? null
          : Voting.fromJson(json['voting'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PemiraModelToJson(_$_PemiraModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'id_ormawa': instance.idOrmawa,
      'nama': instance.nama,
      'foto': instance.foto,
      'deskripsi': instance.deskripsi,
      'tanggal': instance.tanggal,
      'waktu_mulai': instance.waktuMulai,
      'waktu_selesai': instance.waktuSelesai,
      'deleted_at': instance.deletedAt,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'ormawa': instance.ormawa,
      'voting': instance.voting,
    };
