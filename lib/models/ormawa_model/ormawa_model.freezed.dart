// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ormawa_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrmawaModel _$OrmawaModelFromJson(Map<String, dynamic> json) {
  return _OrmawaModel.fromJson(json);
}

/// @nodoc
mixin _$OrmawaModel {
  int? get id => throw _privateConstructorUsedError;
  String? get nama => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;
  @JsonKey(name: 'deleted_at')
  dynamic get deletedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  int? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  int? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrmawaModelCopyWith<OrmawaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrmawaModelCopyWith<$Res> {
  factory $OrmawaModelCopyWith(
          OrmawaModel value, $Res Function(OrmawaModel) then) =
      _$OrmawaModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? nama,
      String? logo,
      @JsonKey(name: 'deleted_at') dynamic deletedAt,
      @JsonKey(name: 'created_at') int? createdAt,
      @JsonKey(name: 'updated_at') int? updatedAt});
}

/// @nodoc
class _$OrmawaModelCopyWithImpl<$Res> implements $OrmawaModelCopyWith<$Res> {
  _$OrmawaModelCopyWithImpl(this._value, this._then);

  final OrmawaModel _value;
  // ignore: unused_field
  final $Res Function(OrmawaModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? nama = freezed,
    Object? logo = freezed,
    Object? deletedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      nama: nama == freezed
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: deletedAt == freezed
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_OrmawaModelCopyWith<$Res>
    implements $OrmawaModelCopyWith<$Res> {
  factory _$$_OrmawaModelCopyWith(
          _$_OrmawaModel value, $Res Function(_$_OrmawaModel) then) =
      __$$_OrmawaModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? nama,
      String? logo,
      @JsonKey(name: 'deleted_at') dynamic deletedAt,
      @JsonKey(name: 'created_at') int? createdAt,
      @JsonKey(name: 'updated_at') int? updatedAt});
}

/// @nodoc
class __$$_OrmawaModelCopyWithImpl<$Res> extends _$OrmawaModelCopyWithImpl<$Res>
    implements _$$_OrmawaModelCopyWith<$Res> {
  __$$_OrmawaModelCopyWithImpl(
      _$_OrmawaModel _value, $Res Function(_$_OrmawaModel) _then)
      : super(_value, (v) => _then(v as _$_OrmawaModel));

  @override
  _$_OrmawaModel get _value => super._value as _$_OrmawaModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? nama = freezed,
    Object? logo = freezed,
    Object? deletedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_OrmawaModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      nama: nama == freezed
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: deletedAt == freezed
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrmawaModel implements _OrmawaModel {
  _$_OrmawaModel(
      {this.id,
      this.nama,
      this.logo,
      @JsonKey(name: 'deleted_at') this.deletedAt,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$_OrmawaModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrmawaModelFromJson(json);

  @override
  final int? id;
  @override
  final String? nama;
  @override
  final String? logo;
  @override
  @JsonKey(name: 'deleted_at')
  final dynamic deletedAt;
  @override
  @JsonKey(name: 'created_at')
  final int? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final int? updatedAt;

  @override
  String toString() {
    return 'OrmawaModel(id: $id, nama: $nama, logo: $logo, deletedAt: $deletedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrmawaModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.nama, nama) &&
            const DeepCollectionEquality().equals(other.logo, logo) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(nama),
      const DeepCollectionEquality().hash(logo),
      const DeepCollectionEquality().hash(deletedAt),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$$_OrmawaModelCopyWith<_$_OrmawaModel> get copyWith =>
      __$$_OrmawaModelCopyWithImpl<_$_OrmawaModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrmawaModelToJson(this);
  }
}

abstract class _OrmawaModel implements OrmawaModel {
  factory _OrmawaModel(
      {final int? id,
      final String? nama,
      final String? logo,
      @JsonKey(name: 'deleted_at') final dynamic deletedAt,
      @JsonKey(name: 'created_at') final int? createdAt,
      @JsonKey(name: 'updated_at') final int? updatedAt}) = _$_OrmawaModel;

  factory _OrmawaModel.fromJson(Map<String, dynamic> json) =
      _$_OrmawaModel.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get nama => throw _privateConstructorUsedError;
  @override
  String? get logo => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'deleted_at')
  dynamic get deletedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'created_at')
  int? get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'updated_at')
  int? get updatedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_OrmawaModelCopyWith<_$_OrmawaModel> get copyWith =>
      throw _privateConstructorUsedError;
}
