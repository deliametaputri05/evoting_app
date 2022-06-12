import 'package:freezed_annotation/freezed_annotation.dart';

part 'mahasiswa_model.freezed.dart';
part 'mahasiswa_model.g.dart';

@freezed
class MahasiswaModel with _$MahasiswaModel {
	factory MahasiswaModel({
		String? angkatan,
		@JsonKey(name: 'created_at') String? createdAt,
		@JsonKey(name: 'deleted_at') dynamic deletedAt,
		String? foto,
		int? id,
		@JsonKey(name: 'id_jurusan') int? idJurusan,
		String? kelas,
		String? nama,
		int? nim,
		@JsonKey(name: 'sudah_vote') dynamic sudahVote,
		@JsonKey(name: 'updated_at') String? updatedAt,
	}) = _MahasiswaModel;

	factory MahasiswaModel.fromJson(Map<String, dynamic> json) => _$MahasiswaModelFromJson(json);
}