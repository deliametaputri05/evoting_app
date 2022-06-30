// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voting_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VotingModel _$$_VotingModelFromJson(Map<String, dynamic> json) =>
    _$_VotingModel(
      id: json['id'] as int?,
      idMhs: json['id_mhs'] as int?,
      idPemira: json['id_pemira'] as int?,
      idOrmawa: json['id_ormawa'] as int?,
      idKandidat: json['id_kandidat'] as int?,
      status: json['status'] as String?,
      deletedAt: json['deleted_at'],
      createdAt: json['created_at'] as int?,
      updatedAt: json['updated_at'] as int?,
      kandidat: json['kandidat'] == null
          ? null
          : Kandidat.fromJson(json['kandidat'] as Map<String, dynamic>),
      mahasiswa: json['mahasiswa'] == null
          ? null
          : Mahasiswa.fromJson(json['mahasiswa'] as Map<String, dynamic>),
      ormawa: json['ormawa'] == null
          ? null
          : Ormawa.fromJson(json['ormawa'] as Map<String, dynamic>),
      pemira: json['pemira'] == null
          ? null
          : Pemira.fromJson(json['pemira'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_VotingModelToJson(_$_VotingModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'id_mhs': instance.idMhs,
      'id_pemira': instance.idPemira,
      'id_ormawa': instance.idOrmawa,
      'id_kandidat': instance.idKandidat,
      'status': instance.status,
      'deleted_at': instance.deletedAt,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'kandidat': instance.kandidat,
      'mahasiswa': instance.mahasiswa,
      'ormawa': instance.ormawa,
      'pemira': instance.pemira,
    };
