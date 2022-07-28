// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Voting _$$_VotingFromJson(Map<String, dynamic> json) => _$_Voting(
      id: json['id'] as int?,
      idMhs: json['id_mhs'] as int?,
      idPemira: json['id_pemira'] as int?,
      idOrmawa: json['id_ormawa'] as int?,
      idKandidat: json['id_kandidat'] as int?,
      status: json['status'] as String?,
      deletedAt: json['deleted_at'],
      createdAt: json['created_at'] as int?,
      updatedAt: json['updated_at'] as int?,
    );

Map<String, dynamic> _$$_VotingToJson(_$_Voting instance) => <String, dynamic>{
      'id': instance.id,
      'id_mhs': instance.idMhs,
      'id_pemira': instance.idPemira,
      'id_ormawa': instance.idOrmawa,
      'id_kandidat': instance.idKandidat,
      'status': instance.status,
      'deleted_at': instance.deletedAt,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
