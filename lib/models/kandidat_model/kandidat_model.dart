import 'package:freezed_annotation/freezed_annotation.dart';

import 'calon_ketua.dart';
import 'calon_wakil.dart';
import 'ormawa.dart';
import 'pemira.dart';

part 'kandidat_model.freezed.dart';
part 'kandidat_model.g.dart';

@freezed
class KandidatModel with _$KandidatModel {
	factory KandidatModel({
		int? id,
		@JsonKey(name: 'id_clnKetua') int? idClnKetua,
		@JsonKey(name: 'id_clnWakil') int? idClnWakil,
		@JsonKey(name: 'id_pemira') int? idPemira,
		@JsonKey(name: 'id_ormawa') int? idOrmawa,
		@JsonKey(name: 'no_urut') int? noUrut,
		String? foto,
		String? visi,
		String? misi,
		@JsonKey(name: 'deleted_at') dynamic deletedAt,
		@JsonKey(name: 'created_at') int? createdAt,
		@JsonKey(name: 'updated_at') int? updatedAt,
		Ormawa? ormawa,
		Pemira? pemira,
		@JsonKey(name: 'calon_ketua') CalonKetua? calonKetua,
		@JsonKey(name: 'calon_wakil') CalonWakil? calonWakil,
	}) = _KandidatModel;

	factory KandidatModel.fromJson(Map<String, dynamic> json) => _$KandidatModelFromJson(json);
}