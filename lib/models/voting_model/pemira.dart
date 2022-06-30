import 'package:freezed_annotation/freezed_annotation.dart';

part 'pemira.freezed.dart';
part 'pemira.g.dart';

@freezed
class Pemira with _$Pemira {
	factory Pemira({
		int? id,
		@JsonKey(name: 'id_ormawa') int? idOrmawa,
		String? nama,
		String? foto,
		String? deskripsi,
		String? tanggal,
		@JsonKey(name: 'waktu_mulai') String? waktuMulai,
		@JsonKey(name: 'waktu_selesai') String? waktuSelesai,
		@JsonKey(name: 'deleted_at') dynamic deletedAt,
		@JsonKey(name: 'created_at') int? createdAt,
		@JsonKey(name: 'updated_at') int? updatedAt,
	}) = _Pemira;

	factory Pemira.fromJson(Map<String, dynamic> json) => _$PemiraFromJson(json);
}