// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kandidat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_KandidatModel _$$_KandidatModelFromJson(Map<String, dynamic> json) =>
    _$_KandidatModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataKandidat.fromJson(e as Map<String, dynamic>))
          .toList(),
      isVoting: json['is_voting'] as bool?,
    );

Map<String, dynamic> _$$_KandidatModelToJson(_$_KandidatModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'is_voting': instance.isVoting,
    };
