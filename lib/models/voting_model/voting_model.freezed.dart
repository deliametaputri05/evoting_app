// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'voting_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VotingModel _$VotingModelFromJson(Map<String, dynamic> json) {
  return _VotingModel.fromJson(json);
}

/// @nodoc
mixin _$VotingModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_mhs')
  int? get idMhs => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_pemira')
  int? get idPemira => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_ormawa')
  int? get idOrmawa => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_kandidat')
  int? get idKandidat => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'deleted_at')
  dynamic get deletedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  int? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  int? get updatedAt => throw _privateConstructorUsedError;
  Kandidat? get kandidat => throw _privateConstructorUsedError;
  Mahasiswa? get mahasiswa => throw _privateConstructorUsedError;
  Ormawa? get ormawa => throw _privateConstructorUsedError;
  Pemira? get pemira => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VotingModelCopyWith<VotingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VotingModelCopyWith<$Res> {
  factory $VotingModelCopyWith(
          VotingModel value, $Res Function(VotingModel) then) =
      _$VotingModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      @JsonKey(name: 'id_mhs') int? idMhs,
      @JsonKey(name: 'id_pemira') int? idPemira,
      @JsonKey(name: 'id_ormawa') int? idOrmawa,
      @JsonKey(name: 'id_kandidat') int? idKandidat,
      String? status,
      @JsonKey(name: 'deleted_at') dynamic deletedAt,
      @JsonKey(name: 'created_at') int? createdAt,
      @JsonKey(name: 'updated_at') int? updatedAt,
      Kandidat? kandidat,
      Mahasiswa? mahasiswa,
      Ormawa? ormawa,
      Pemira? pemira});

  $KandidatCopyWith<$Res>? get kandidat;
  $MahasiswaCopyWith<$Res>? get mahasiswa;
  $OrmawaCopyWith<$Res>? get ormawa;
  $PemiraCopyWith<$Res>? get pemira;
}

/// @nodoc
class _$VotingModelCopyWithImpl<$Res> implements $VotingModelCopyWith<$Res> {
  _$VotingModelCopyWithImpl(this._value, this._then);

  final VotingModel _value;
  // ignore: unused_field
  final $Res Function(VotingModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? idMhs = freezed,
    Object? idPemira = freezed,
    Object? idOrmawa = freezed,
    Object? idKandidat = freezed,
    Object? status = freezed,
    Object? deletedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? kandidat = freezed,
    Object? mahasiswa = freezed,
    Object? ormawa = freezed,
    Object? pemira = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      idMhs: idMhs == freezed
          ? _value.idMhs
          : idMhs // ignore: cast_nullable_to_non_nullable
              as int?,
      idPemira: idPemira == freezed
          ? _value.idPemira
          : idPemira // ignore: cast_nullable_to_non_nullable
              as int?,
      idOrmawa: idOrmawa == freezed
          ? _value.idOrmawa
          : idOrmawa // ignore: cast_nullable_to_non_nullable
              as int?,
      idKandidat: idKandidat == freezed
          ? _value.idKandidat
          : idKandidat // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
      kandidat: kandidat == freezed
          ? _value.kandidat
          : kandidat // ignore: cast_nullable_to_non_nullable
              as Kandidat?,
      mahasiswa: mahasiswa == freezed
          ? _value.mahasiswa
          : mahasiswa // ignore: cast_nullable_to_non_nullable
              as Mahasiswa?,
      ormawa: ormawa == freezed
          ? _value.ormawa
          : ormawa // ignore: cast_nullable_to_non_nullable
              as Ormawa?,
      pemira: pemira == freezed
          ? _value.pemira
          : pemira // ignore: cast_nullable_to_non_nullable
              as Pemira?,
    ));
  }

  @override
  $KandidatCopyWith<$Res>? get kandidat {
    if (_value.kandidat == null) {
      return null;
    }

    return $KandidatCopyWith<$Res>(_value.kandidat!, (value) {
      return _then(_value.copyWith(kandidat: value));
    });
  }

  @override
  $MahasiswaCopyWith<$Res>? get mahasiswa {
    if (_value.mahasiswa == null) {
      return null;
    }

    return $MahasiswaCopyWith<$Res>(_value.mahasiswa!, (value) {
      return _then(_value.copyWith(mahasiswa: value));
    });
  }

  @override
  $OrmawaCopyWith<$Res>? get ormawa {
    if (_value.ormawa == null) {
      return null;
    }

    return $OrmawaCopyWith<$Res>(_value.ormawa!, (value) {
      return _then(_value.copyWith(ormawa: value));
    });
  }

  @override
  $PemiraCopyWith<$Res>? get pemira {
    if (_value.pemira == null) {
      return null;
    }

    return $PemiraCopyWith<$Res>(_value.pemira!, (value) {
      return _then(_value.copyWith(pemira: value));
    });
  }
}

/// @nodoc
abstract class _$$_VotingModelCopyWith<$Res>
    implements $VotingModelCopyWith<$Res> {
  factory _$$_VotingModelCopyWith(
          _$_VotingModel value, $Res Function(_$_VotingModel) then) =
      __$$_VotingModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      @JsonKey(name: 'id_mhs') int? idMhs,
      @JsonKey(name: 'id_pemira') int? idPemira,
      @JsonKey(name: 'id_ormawa') int? idOrmawa,
      @JsonKey(name: 'id_kandidat') int? idKandidat,
      String? status,
      @JsonKey(name: 'deleted_at') dynamic deletedAt,
      @JsonKey(name: 'created_at') int? createdAt,
      @JsonKey(name: 'updated_at') int? updatedAt,
      Kandidat? kandidat,
      Mahasiswa? mahasiswa,
      Ormawa? ormawa,
      Pemira? pemira});

  @override
  $KandidatCopyWith<$Res>? get kandidat;
  @override
  $MahasiswaCopyWith<$Res>? get mahasiswa;
  @override
  $OrmawaCopyWith<$Res>? get ormawa;
  @override
  $PemiraCopyWith<$Res>? get pemira;
}

/// @nodoc
class __$$_VotingModelCopyWithImpl<$Res> extends _$VotingModelCopyWithImpl<$Res>
    implements _$$_VotingModelCopyWith<$Res> {
  __$$_VotingModelCopyWithImpl(
      _$_VotingModel _value, $Res Function(_$_VotingModel) _then)
      : super(_value, (v) => _then(v as _$_VotingModel));

  @override
  _$_VotingModel get _value => super._value as _$_VotingModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? idMhs = freezed,
    Object? idPemira = freezed,
    Object? idOrmawa = freezed,
    Object? idKandidat = freezed,
    Object? status = freezed,
    Object? deletedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? kandidat = freezed,
    Object? mahasiswa = freezed,
    Object? ormawa = freezed,
    Object? pemira = freezed,
  }) {
    return _then(_$_VotingModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      idMhs: idMhs == freezed
          ? _value.idMhs
          : idMhs // ignore: cast_nullable_to_non_nullable
              as int?,
      idPemira: idPemira == freezed
          ? _value.idPemira
          : idPemira // ignore: cast_nullable_to_non_nullable
              as int?,
      idOrmawa: idOrmawa == freezed
          ? _value.idOrmawa
          : idOrmawa // ignore: cast_nullable_to_non_nullable
              as int?,
      idKandidat: idKandidat == freezed
          ? _value.idKandidat
          : idKandidat // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
      kandidat: kandidat == freezed
          ? _value.kandidat
          : kandidat // ignore: cast_nullable_to_non_nullable
              as Kandidat?,
      mahasiswa: mahasiswa == freezed
          ? _value.mahasiswa
          : mahasiswa // ignore: cast_nullable_to_non_nullable
              as Mahasiswa?,
      ormawa: ormawa == freezed
          ? _value.ormawa
          : ormawa // ignore: cast_nullable_to_non_nullable
              as Ormawa?,
      pemira: pemira == freezed
          ? _value.pemira
          : pemira // ignore: cast_nullable_to_non_nullable
              as Pemira?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VotingModel implements _VotingModel {
  _$_VotingModel(
      {this.id,
      @JsonKey(name: 'id_mhs') this.idMhs,
      @JsonKey(name: 'id_pemira') this.idPemira,
      @JsonKey(name: 'id_ormawa') this.idOrmawa,
      @JsonKey(name: 'id_kandidat') this.idKandidat,
      this.status,
      @JsonKey(name: 'deleted_at') this.deletedAt,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      this.kandidat,
      this.mahasiswa,
      this.ormawa,
      this.pemira});

  factory _$_VotingModel.fromJson(Map<String, dynamic> json) =>
      _$$_VotingModelFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'id_mhs')
  final int? idMhs;
  @override
  @JsonKey(name: 'id_pemira')
  final int? idPemira;
  @override
  @JsonKey(name: 'id_ormawa')
  final int? idOrmawa;
  @override
  @JsonKey(name: 'id_kandidat')
  final int? idKandidat;
  @override
  final String? status;
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
  final Kandidat? kandidat;
  @override
  final Mahasiswa? mahasiswa;
  @override
  final Ormawa? ormawa;
  @override
  final Pemira? pemira;

  @override
  String toString() {
    return 'VotingModel(id: $id, idMhs: $idMhs, idPemira: $idPemira, idOrmawa: $idOrmawa, idKandidat: $idKandidat, status: $status, deletedAt: $deletedAt, createdAt: $createdAt, updatedAt: $updatedAt, kandidat: $kandidat, mahasiswa: $mahasiswa, ormawa: $ormawa, pemira: $pemira)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VotingModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.idMhs, idMhs) &&
            const DeepCollectionEquality().equals(other.idPemira, idPemira) &&
            const DeepCollectionEquality().equals(other.idOrmawa, idOrmawa) &&
            const DeepCollectionEquality()
                .equals(other.idKandidat, idKandidat) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.kandidat, kandidat) &&
            const DeepCollectionEquality().equals(other.mahasiswa, mahasiswa) &&
            const DeepCollectionEquality().equals(other.ormawa, ormawa) &&
            const DeepCollectionEquality().equals(other.pemira, pemira));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(idMhs),
      const DeepCollectionEquality().hash(idPemira),
      const DeepCollectionEquality().hash(idOrmawa),
      const DeepCollectionEquality().hash(idKandidat),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(deletedAt),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(kandidat),
      const DeepCollectionEquality().hash(mahasiswa),
      const DeepCollectionEquality().hash(ormawa),
      const DeepCollectionEquality().hash(pemira));

  @JsonKey(ignore: true)
  @override
  _$$_VotingModelCopyWith<_$_VotingModel> get copyWith =>
      __$$_VotingModelCopyWithImpl<_$_VotingModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VotingModelToJson(this);
  }
}

abstract class _VotingModel implements VotingModel {
  factory _VotingModel(
      {final int? id,
      @JsonKey(name: 'id_mhs') final int? idMhs,
      @JsonKey(name: 'id_pemira') final int? idPemira,
      @JsonKey(name: 'id_ormawa') final int? idOrmawa,
      @JsonKey(name: 'id_kandidat') final int? idKandidat,
      final String? status,
      @JsonKey(name: 'deleted_at') final dynamic deletedAt,
      @JsonKey(name: 'created_at') final int? createdAt,
      @JsonKey(name: 'updated_at') final int? updatedAt,
      final Kandidat? kandidat,
      final Mahasiswa? mahasiswa,
      final Ormawa? ormawa,
      final Pemira? pemira}) = _$_VotingModel;

  factory _VotingModel.fromJson(Map<String, dynamic> json) =
      _$_VotingModel.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'id_mhs')
  int? get idMhs => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'id_pemira')
  int? get idPemira => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'id_ormawa')
  int? get idOrmawa => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'id_kandidat')
  int? get idKandidat => throw _privateConstructorUsedError;
  @override
  String? get status => throw _privateConstructorUsedError;
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
  Kandidat? get kandidat => throw _privateConstructorUsedError;
  @override
  Mahasiswa? get mahasiswa => throw _privateConstructorUsedError;
  @override
  Ormawa? get ormawa => throw _privateConstructorUsedError;
  @override
  Pemira? get pemira => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_VotingModelCopyWith<_$_VotingModel> get copyWith =>
      throw _privateConstructorUsedError;
}
