import 'package:freezed_annotation/freezed_annotation.dart';

part 'ormawa_model.freezed.dart';
part 'ormawa_model.g.dart';

@freezed
class OrmawaModel with _$OrmawaModel {
  factory OrmawaModel({
    int? id,
    String? nama,
    String? logo,
    @JsonKey(name: 'deleted_at') dynamic deletedAt,
    @JsonKey(name: 'created_at') int? createdAt,
    @JsonKey(name: 'updated_at') int? updatedAt,
  }) = _OrmawaModel;

  factory OrmawaModel.fromJson(Map<String, dynamic> json) =>
      _$OrmawaModelFromJson(json);
}
