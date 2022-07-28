import 'package:freezed_annotation/freezed_annotation.dart';

part 'calon_wakil.freezed.dart';
part 'calon_wakil.g.dart';

@freezed
class CalonWakil with _$CalonWakil {
	factory CalonWakil({
		int? id,
		@JsonKey(name: 'id_jurusan') int? idJurusan,
		@JsonKey(name: 'id_ormawa') int? idOrmawa,
		int? nim,
		String? nama,
		String? angkatan,
		String? kelas,
		String? foto,
		String? alamat,
		String? moto,
		@JsonKey(name: 'deleted_at') dynamic deletedAt,
		@JsonKey(name: 'created_at') int? createdAt,
		@JsonKey(name: 'updated_at') int? updatedAt,
	}) = _CalonWakil;

	factory CalonWakil.fromJson(Map<String, dynamic> json) => _$CalonWakilFromJson(json);
}