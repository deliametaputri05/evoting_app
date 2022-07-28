// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calon_wakil.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CalonWakil _$$_CalonWakilFromJson(Map<String, dynamic> json) =>
    _$_CalonWakil(
      id: json['id'] as int?,
      idJurusan: json['id_jurusan'] as int?,
      idOrmawa: json['id_ormawa'] as int?,
      nim: json['nim'] as int?,
      nama: json['nama'] as String?,
      angkatan: json['angkatan'] as String?,
      kelas: json['kelas'] as String?,
      foto: json['foto'] as String?,
      alamat: json['alamat'] as String?,
      moto: json['moto'] as String?,
      deletedAt: json['deleted_at'],
      createdAt: json['created_at'] as int?,
      updatedAt: json['updated_at'] as int?,
    );

Map<String, dynamic> _$$_CalonWakilToJson(_$_CalonWakil instance) =>
    <String, dynamic>{
      'id': instance.id,
      'id_jurusan': instance.idJurusan,
      'id_ormawa': instance.idOrmawa,
      'nim': instance.nim,
      'nama': instance.nama,
      'angkatan': instance.angkatan,
      'kelas': instance.kelas,
      'foto': instance.foto,
      'alamat': instance.alamat,
      'moto': instance.moto,
      'deleted_at': instance.deletedAt,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
