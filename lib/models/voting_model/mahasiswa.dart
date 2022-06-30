import 'package:freezed_annotation/freezed_annotation.dart';

part 'mahasiswa.freezed.dart';
part 'mahasiswa.g.dart';

@freezed
class Mahasiswa with _$Mahasiswa {
	factory Mahasiswa({
		int? id,
		@JsonKey(name: 'id_jurusan') int? idJurusan,
		int? nim,
		String? nama,
		String? angkatan,
		String? kelas,
		String? foto,
		@JsonKey(name: 'sudah_vote') int? sudahVote,
		@JsonKey(name: 'deleted_at') dynamic deletedAt,
		@JsonKey(name: 'created_at') int? createdAt,
		@JsonKey(name: 'updated_at') int? updatedAt,
	}) = _Mahasiswa;

	factory Mahasiswa.fromJson(Map<String, dynamic> json) => _$MahasiswaFromJson(json);
}