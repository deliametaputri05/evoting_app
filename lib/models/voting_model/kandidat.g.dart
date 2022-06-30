// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kandidat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Kandidat _$$_KandidatFromJson(Map<String, dynamic> json) => _$_Kandidat(
      id: json['id'] as int?,
      idClnKetua: json['id_clnKetua'] as int?,
      idClnWakil: json['id_clnWakil'] as int?,
      idPemira: json['id_pemira'] as int?,
      idOrmawa: json['id_ormawa'] as int?,
      noUrut: json['no_urut'] as int?,
      foto: json['foto'] as String?,
      visi: json['visi'] as String?,
      misi: json['misi'] as String?,
      jumlahSuara: json['jumlah_suara'] as int?,
      deletedAt: json['deleted_at'],
      createdAt: json['created_at'] as int?,
      updatedAt: json['updated_at'] as int?,
    );

Map<String, dynamic> _$$_KandidatToJson(_$_Kandidat instance) =>
    <String, dynamic>{
      'id': instance.id,
      'id_clnKetua': instance.idClnKetua,
      'id_clnWakil': instance.idClnWakil,
      'id_pemira': instance.idPemira,
      'id_ormawa': instance.idOrmawa,
      'no_urut': instance.noUrut,
      'foto': instance.foto,
      'visi': instance.visi,
      'misi': instance.misi,
      'jumlah_suara': instance.jumlahSuara,
      'deleted_at': instance.deletedAt,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
