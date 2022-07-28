import 'package:freezed_annotation/freezed_annotation.dart';

import 'data_kandidat.dart';

part 'kandidat_model.freezed.dart';
part 'kandidat_model.g.dart';

@freezed
class KandidatModel with _$KandidatModel {
  factory KandidatModel({
    List<DataKandidat>? data,
    @JsonKey(name: 'is_voting') bool? isVoting,
  }) = _KandidatModel;

  factory KandidatModel.fromJson(Map<String, dynamic> json) =>
      _$KandidatModelFromJson(json);
}
