// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mahasiswa.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Mahasiswa _$$_MahasiswaFromJson(Map<String, dynamic> json) => _$_Mahasiswa(
      id: json['id'] as int?,
      idJurusan: json['id_jurusan'] as int?,
      nim: json['nim'] as int?,
      nama: json['nama'] as String?,
      angkatan: json['angkatan'] as String?,
      kelas: json['kelas'] as String?,
      foto: json['foto'] as String?,
      sudahVote: json['sudah_vote'] as int?,
      deletedAt: json['deleted_at'],
      createdAt: json['created_at'] as int?,
      updatedAt: json['updated_at'] as int?,
    );

Map<String, dynamic> _$$_MahasiswaToJson(_$_Mahasiswa instance) =>
    <String, dynamic>{
      'id': instance.id,
      'id_jurusan': instance.idJurusan,
      'nim': instance.nim,
      'nama': instance.nama,
      'angkatan': instance.angkatan,
      'kelas': instance.kelas,
      'foto': instance.foto,
      'sudah_vote': instance.sudahVote,
      'deleted_at': instance.deletedAt,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
