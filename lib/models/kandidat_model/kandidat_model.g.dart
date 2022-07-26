// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kandidat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_KandidatModel _$$_KandidatModelFromJson(Map<String, dynamic> json) =>
    _$_KandidatModel(
      id: json['id'] as int?,
      idClnKetua: json['id_clnKetua'] as int?,
      idClnWakil: json['id_clnWakil'] as int?,
      idPemira: json['id_pemira'] as int?,
      idOrmawa: json['id_ormawa'] as int?,
      noUrut: json['no_urut'] as int?,
      jumlahSuara: json['jumlah_suara'] as int?,
      foto: json['foto'] as String?,
      visi: json['visi'] as String?,
      misi: json['misi'] as String?,
      deletedAt: json['deleted_at'],
      createdAt: json['created_at'] as int?,
      updatedAt: json['updated_at'] as int?,
      ormawa: json['ormawa'] == null
          ? null
          : Ormawa.fromJson(json['ormawa'] as Map<String, dynamic>),
      pemira: json['pemira'] == null
          ? null
          : Pemira.fromJson(json['pemira'] as Map<String, dynamic>),
      calonKetua: json['calon_ketua'] == null
          ? null
          : CalonKetua.fromJson(json['calon_ketua'] as Map<String, dynamic>),
      calonWakil: json['calon_wakil'] == null
          ? null
          : CalonWakil.fromJson(json['calon_wakil'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_KandidatModelToJson(_$_KandidatModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'id_clnKetua': instance.idClnKetua,
      'id_clnWakil': instance.idClnWakil,
      'id_pemira': instance.idPemira,
      'id_ormawa': instance.idOrmawa,
      'no_urut': instance.noUrut,
      'jumlah_suara': instance.jumlahSuara,
      'foto': instance.foto,
      'visi': instance.visi,
      'misi': instance.misi,
      'deleted_at': instance.deletedAt,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'ormawa': instance.ormawa,
      'pemira': instance.pemira,
      'calon_ketua': instance.calonKetua,
      'calon_wakil': instance.calonWakil,
    };
