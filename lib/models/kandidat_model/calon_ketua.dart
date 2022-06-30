import 'package:freezed_annotation/freezed_annotation.dart';

part 'calon_ketua.freezed.dart';
part 'calon_ketua.g.dart';

@freezed
class CalonKetua with _$CalonKetua {
	factory CalonKetua({
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
	}) = _CalonKetua;

	factory CalonKetua.fromJson(Map<String, dynamic> json) => _$CalonKetuaFromJson(json);
}