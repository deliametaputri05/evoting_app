import 'package:freezed_annotation/freezed_annotation.dart';

part 'ormawa.freezed.dart';
part 'ormawa.g.dart';

@freezed
class Ormawa with _$Ormawa {
	factory Ormawa({
		int? id,
		String? nama,
		String? label,
		String? deskripsi,
		String? logo,
		@JsonKey(name: 'deleted_at') dynamic deletedAt,
		@JsonKey(name: 'created_at') int? createdAt,
		@JsonKey(name: 'updated_at') int? updatedAt,
	}) = _Ormawa;

	factory Ormawa.fromJson(Map<String, dynamic> json) => _$OrmawaFromJson(json);
}