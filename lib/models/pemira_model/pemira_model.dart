import 'package:freezed_annotation/freezed_annotation.dart';

import 'ormawa.dart';
import 'voting.dart';

part 'pemira_model.freezed.dart';
part 'pemira_model.g.dart';

@freezed
class PemiraModel with _$PemiraModel {
	factory PemiraModel({
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
		Ormawa? ormawa,
		Voting? voting,
	}) = _PemiraModel;

	factory PemiraModel.fromJson(Map<String, dynamic> json) => _$PemiraModelFromJson(json);
}