import 'package:freezed_annotation/freezed_annotation.dart';

part 'kandidat.freezed.dart';
part 'kandidat.g.dart';

@freezed
class Kandidat with _$Kandidat {
	factory Kandidat({
		int? id,
		@JsonKey(name: 'id_clnKetua') int? idClnKetua,
		@JsonKey(name: 'id_clnWakil') int? idClnWakil,
		@JsonKey(name: 'id_pemira') int? idPemira,
		@JsonKey(name: 'id_ormawa') int? idOrmawa,
		@JsonKey(name: 'no_urut') int? noUrut,
		String? foto,
		String? visi,
		String? misi,
		@JsonKey(name: 'jumlah_suara') int? jumlahSuara,
		@JsonKey(name: 'deleted_at') dynamic deletedAt,
		@JsonKey(name: 'created_at') int? createdAt,
		@JsonKey(name: 'updated_at') int? updatedAt,
	}) = _Kandidat;

	factory Kandidat.fromJson(Map<String, dynamic> json) => _$KandidatFromJson(json);
}