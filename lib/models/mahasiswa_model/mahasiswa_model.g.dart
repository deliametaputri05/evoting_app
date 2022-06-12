// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mahasiswa_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MahasiswaModel _$$_MahasiswaModelFromJson(Map<String, dynamic> json) =>
    _$_MahasiswaModel(
      angkatan: json['angkatan'] as String?,
      createdAt: json['created_at'] as String?,
      deletedAt: json['deleted_at'],
      foto: json['foto'] as String?,
      id: json['id'] as int?,
      idJurusan: json['id_jurusan'] as int?,
      kelas: json['kelas'] as String?,
      nama: json['nama'] as String?,
      nim: json['nim'] as int?,
      sudahVote: json['sudah_vote'],
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$_MahasiswaModelToJson(_$_MahasiswaModel instance) =>
    <String, dynamic>{
      'angkatan': instance.angkatan,
      'created_at': instance.createdAt,
      'deleted_at': instance.deletedAt,
      'foto': instance.foto,
      'id': instance.id,
      'id_jurusan': instance.idJurusan,
      'kelas': instance.kelas,
      'nama': instance.nama,
      'nim': instance.nim,
      'sudah_vote': instance.sudahVote,
      'updated_at': instance.updatedAt,
    };
