// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'kandidat_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KandidatModel _$KandidatModelFromJson(Map<String, dynamic> json) {
  return _KandidatModel.fromJson(json);
}

/// @nodoc
mixin _$KandidatModel {
  List<DataKandidat>? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_voting')
  bool? get isVoting => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KandidatModelCopyWith<KandidatModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KandidatModelCopyWith<$Res> {
  factory $KandidatModelCopyWith(
          KandidatModel value, $Res Function(KandidatModel) then) =
      _$KandidatModelCopyWithImpl<$Res>;
  $Res call(
      {List<DataKandidat>? data, @JsonKey(name: 'is_voting') bool? isVoting});
}

/// @nodoc
class _$KandidatModelCopyWithImpl<$Res>
    implements $KandidatModelCopyWith<$Res> {
  _$KandidatModelCopyWithImpl(this._value, this._then);

  final KandidatModel _value;
  // ignore: unused_field
  final $Res Function(KandidatModel) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? isVoting = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataKandidat>?,
      isVoting: isVoting == freezed
          ? _value.isVoting
          : isVoting // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_KandidatModelCopyWith<$Res>
    implements $KandidatModelCopyWith<$Res> {
  factory _$$_KandidatModelCopyWith(
          _$_KandidatModel value, $Res Function(_$_KandidatModel) then) =
      __$$_KandidatModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<DataKandidat>? data, @JsonKey(name: 'is_voting') bool? isVoting});
}

/// @nodoc
class __$$_KandidatModelCopyWithImpl<$Res>
    extends _$KandidatModelCopyWithImpl<$Res>
    implements _$$_KandidatModelCopyWith<$Res> {
  __$$_KandidatModelCopyWithImpl(
      _$_KandidatModel _value, $Res Function(_$_KandidatModel) _then)
      : super(_value, (v) => _then(v as _$_KandidatModel));

  @override
  _$_KandidatModel get _value => super._value as _$_KandidatModel;

  @override
  $Res call({
    Object? data = freezed,
    Object? isVoting = freezed,
  }) {
    return _then(_$_KandidatModel(
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataKandidat>?,
      isVoting: isVoting == freezed
          ? _value.isVoting
          : isVoting // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_KandidatModel implements _KandidatModel {
  _$_KandidatModel(
      {final List<DataKandidat>? data,
      @JsonKey(name: 'is_voting') this.isVoting})
      : _data = data;

  factory _$_KandidatModel.fromJson(Map<String, dynamic> json) =>
      _$$_KandidatModelFromJson(json);

  final List<DataKandidat>? _data;
  @override
  List<DataKandidat>? get data {
    final value = _data;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'is_voting')
  final bool? isVoting;

  @override
  String toString() {
    return 'KandidatModel(data: $data, isVoting: $isVoting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KandidatModel &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other.isVoting, isVoting));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(isVoting));

  @JsonKey(ignore: true)
  @override
  _$$_KandidatModelCopyWith<_$_KandidatModel> get copyWith =>
      __$$_KandidatModelCopyWithImpl<_$_KandidatModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KandidatModelToJson(this);
  }
}

abstract class _KandidatModel implements KandidatModel {
  factory _KandidatModel(
      {final List<DataKandidat>? data,
      @JsonKey(name: 'is_voting') final bool? isVoting}) = _$_KandidatModel;

  factory _KandidatModel.fromJson(Map<String, dynamic> json) =
      _$_KandidatModel.fromJson;

  @override
  List<DataKandidat>? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'is_voting')
  bool? get isVoting => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_KandidatModelCopyWith<_$_KandidatModel> get copyWith =>
      throw _privateConstructorUsedError;
}
