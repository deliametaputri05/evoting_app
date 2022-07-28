import 'package:freezed_annotation/freezed_annotation.dart';

part 'voting.freezed.dart';
part 'voting.g.dart';

@freezed
class Voting with _$Voting {
	factory Voting({
		int? id,
		@JsonKey(name: 'id_mhs') int? idMhs,
		@JsonKey(name: 'id_pemira') int? idPemira,
		@JsonKey(name: 'id_ormawa') int? idOrmawa,
		@JsonKey(name: 'id_kandidat') int? idKandidat,
		String? status,
		@JsonKey(name: 'deleted_at') dynamic deletedAt,
		@JsonKey(name: 'created_at') int? createdAt,
		@JsonKey(name: 'updated_at') int? updatedAt,
	}) = _Voting;

	factory Voting.fromJson(Map<String, dynamic> json) => _$VotingFromJson(json);
}