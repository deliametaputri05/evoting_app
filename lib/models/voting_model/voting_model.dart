import 'package:freezed_annotation/freezed_annotation.dart';

import 'kandidat.dart';
import 'mahasiswa.dart';
import 'ormawa.dart';
import 'pemira.dart';

part 'voting_model.freezed.dart';
part 'voting_model.g.dart';

@freezed
class VotingModel with _$VotingModel {
	factory VotingModel({
		int? id,
		@JsonKey(name: 'id_mhs') int? idMhs,
		@JsonKey(name: 'id_pemira') int? idPemira,
		@JsonKey(name: 'id_ormawa') int? idOrmawa,
		@JsonKey(name: 'id_kandidat') int? idKandidat,
		String? status,
		@JsonKey(name: 'deleted_at') dynamic deletedAt,
		@JsonKey(name: 'created_at') int? createdAt,
		@JsonKey(name: 'updated_at') int? updatedAt,
		Kandidat? kandidat,
		Mahasiswa? mahasiswa,
		Ormawa? ormawa,
		Pemira? pemira,
	}) = _VotingModel;

	factory VotingModel.fromJson(Map<String, dynamic> json) => _$VotingModelFromJson(json);
}