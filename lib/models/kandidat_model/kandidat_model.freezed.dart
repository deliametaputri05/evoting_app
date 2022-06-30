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
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_clnKetua')
  int? get idClnKetua => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_clnWakil')
  int? get idClnWakil => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_pemira')
  int? get idPemira => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_ormawa')
  int? get idOrmawa => throw _privateConstructorUsedError;
  @JsonKey(name: 'no_urut')
  int? get noUrut => throw _privateConstructorUsedError;
  String? get foto => throw _privateConstructorUsedError;
  String? get visi => throw _privateConstructorUsedError;
  String? get misi => throw _privateConstructorUsedError;
  @JsonKey(name: 'deleted_at')
  dynamic get deletedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  int? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  int? get updatedAt => throw _privateConstructorUsedError;
  Ormawa? get ormawa => throw _privateConstructorUsedError;
  Pemira? get pemira => throw _privateConstructorUsedError;
  @JsonKey(name: 'calon_ketua')
  CalonKetua? get calonKetua => throw _privateConstructorUsedError;
  @JsonKey(name: 'calon_wakil')
  CalonWakil? get calonWakil => throw _privateConstructorUsedError;

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
      {int? id,
      @JsonKey(name: 'id_clnKetua') int? idClnKetua,
      @JsonKey(name: 'id_clnWakil') int? idClnWakil,
      @JsonKey(name: 'id_pemira') int? idPemira,
      @JsonKey(name: 'id_ormawa') int? idOrmawa,
      @JsonKey(name: 'no_urut') int? noUrut,
      String? foto,
      String? visi,
      String? misi,
      @JsonKey(name: 'deleted_at') dynamic deletedAt,
      @JsonKey(name: 'created_at') int? createdAt,
      @JsonKey(name: 'updated_at') int? updatedAt,
      Ormawa? ormawa,
      Pemira? pemira,
      @JsonKey(name: 'calon_ketua') CalonKetua? calonKetua,
      @JsonKey(name: 'calon_wakil') CalonWakil? calonWakil});

  $OrmawaCopyWith<$Res>? get ormawa;
  $PemiraCopyWith<$Res>? get pemira;
  $CalonKetuaCopyWith<$Res>? get calonKetua;
  $CalonWakilCopyWith<$Res>? get calonWakil;
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
    Object? id = freezed,
    Object? idClnKetua = freezed,
    Object? idClnWakil = freezed,
    Object? idPemira = freezed,
    Object? idOrmawa = freezed,
    Object? noUrut = freezed,
    Object? foto = freezed,
    Object? visi = freezed,
    Object? misi = freezed,
    Object? deletedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? ormawa = freezed,
    Object? pemira = freezed,
    Object? calonKetua = freezed,
    Object? calonWakil = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      idClnKetua: idClnKetua == freezed
          ? _value.idClnKetua
          : idClnKetua // ignore: cast_nullable_to_non_nullable
              as int?,
      idClnWakil: idClnWakil == freezed
          ? _value.idClnWakil
          : idClnWakil // ignore: cast_nullable_to_non_nullable
              as int?,
      idPemira: idPemira == freezed
          ? _value.idPemira
          : idPemira // ignore: cast_nullable_to_non_nullable
              as int?,
      idOrmawa: idOrmawa == freezed
          ? _value.idOrmawa
          : idOrmawa // ignore: cast_nullable_to_non_nullable
              as int?,
      noUrut: noUrut == freezed
          ? _value.noUrut
          : noUrut // ignore: cast_nullable_to_non_nullable
              as int?,
      foto: foto == freezed
          ? _value.foto
          : foto // ignore: cast_nullable_to_non_nullable
              as String?,
      visi: visi == freezed
          ? _value.visi
          : visi // ignore: cast_nullable_to_non_nullable
              as String?,
      misi: misi == freezed
          ? _value.misi
          : misi // ignore: cast_nullable_to_non_nullable
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
      ormawa: ormawa == freezed
          ? _value.ormawa
          : ormawa // ignore: cast_nullable_to_non_nullable
              as Ormawa?,
      pemira: pemira == freezed
          ? _value.pemira
          : pemira // ignore: cast_nullable_to_non_nullable
              as Pemira?,
      calonKetua: calonKetua == freezed
          ? _value.calonKetua
          : calonKetua // ignore: cast_nullable_to_non_nullable
              as CalonKetua?,
      calonWakil: calonWakil == freezed
          ? _value.calonWakil
          : calonWakil // ignore: cast_nullable_to_non_nullable
              as CalonWakil?,
    ));
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

  @override
  $CalonKetuaCopyWith<$Res>? get calonKetua {
    if (_value.calonKetua == null) {
      return null;
    }

    return $CalonKetuaCopyWith<$Res>(_value.calonKetua!, (value) {
      return _then(_value.copyWith(calonKetua: value));
    });
  }

  @override
  $CalonWakilCopyWith<$Res>? get calonWakil {
    if (_value.calonWakil == null) {
      return null;
    }

    return $CalonWakilCopyWith<$Res>(_value.calonWakil!, (value) {
      return _then(_value.copyWith(calonWakil: value));
    });
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
      {int? id,
      @JsonKey(name: 'id_clnKetua') int? idClnKetua,
      @JsonKey(name: 'id_clnWakil') int? idClnWakil,
      @JsonKey(name: 'id_pemira') int? idPemira,
      @JsonKey(name: 'id_ormawa') int? idOrmawa,
      @JsonKey(name: 'no_urut') int? noUrut,
      String? foto,
      String? visi,
      String? misi,
      @JsonKey(name: 'deleted_at') dynamic deletedAt,
      @JsonKey(name: 'created_at') int? createdAt,
      @JsonKey(name: 'updated_at') int? updatedAt,
      Ormawa? ormawa,
      Pemira? pemira,
      @JsonKey(name: 'calon_ketua') CalonKetua? calonKetua,
      @JsonKey(name: 'calon_wakil') CalonWakil? calonWakil});

  @override
  $OrmawaCopyWith<$Res>? get ormawa;
  @override
  $PemiraCopyWith<$Res>? get pemira;
  @override
  $CalonKetuaCopyWith<$Res>? get calonKetua;
  @override
  $CalonWakilCopyWith<$Res>? get calonWakil;
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
    Object? id = freezed,
    Object? idClnKetua = freezed,
    Object? idClnWakil = freezed,
    Object? idPemira = freezed,
    Object? idOrmawa = freezed,
    Object? noUrut = freezed,
    Object? foto = freezed,
    Object? visi = freezed,
    Object? misi = freezed,
    Object? deletedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? ormawa = freezed,
    Object? pemira = freezed,
    Object? calonKetua = freezed,
    Object? calonWakil = freezed,
  }) {
    return _then(_$_KandidatModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      idClnKetua: idClnKetua == freezed
          ? _value.idClnKetua
          : idClnKetua // ignore: cast_nullable_to_non_nullable
              as int?,
      idClnWakil: idClnWakil == freezed
          ? _value.idClnWakil
          : idClnWakil // ignore: cast_nullable_to_non_nullable
              as int?,
      idPemira: idPemira == freezed
          ? _value.idPemira
          : idPemira // ignore: cast_nullable_to_non_nullable
              as int?,
      idOrmawa: idOrmawa == freezed
          ? _value.idOrmawa
          : idOrmawa // ignore: cast_nullable_to_non_nullable
              as int?,
      noUrut: noUrut == freezed
          ? _value.noUrut
          : noUrut // ignore: cast_nullable_to_non_nullable
              as int?,
      foto: foto == freezed
          ? _value.foto
          : foto // ignore: cast_nullable_to_non_nullable
              as String?,
      visi: visi == freezed
          ? _value.visi
          : visi // ignore: cast_nullable_to_non_nullable
              as String?,
      misi: misi == freezed
          ? _value.misi
          : misi // ignore: cast_nullable_to_non_nullable
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
      ormawa: ormawa == freezed
          ? _value.ormawa
          : ormawa // ignore: cast_nullable_to_non_nullable
              as Ormawa?,
      pemira: pemira == freezed
          ? _value.pemira
          : pemira // ignore: cast_nullable_to_non_nullable
              as Pemira?,
      calonKetua: calonKetua == freezed
          ? _value.calonKetua
          : calonKetua // ignore: cast_nullable_to_non_nullable
              as CalonKetua?,
      calonWakil: calonWakil == freezed
          ? _value.calonWakil
          : calonWakil // ignore: cast_nullable_to_non_nullable
              as CalonWakil?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_KandidatModel implements _KandidatModel {
  _$_KandidatModel(
      {this.id,
      @JsonKey(name: 'id_clnKetua') this.idClnKetua,
      @JsonKey(name: 'id_clnWakil') this.idClnWakil,
      @JsonKey(name: 'id_pemira') this.idPemira,
      @JsonKey(name: 'id_ormawa') this.idOrmawa,
      @JsonKey(name: 'no_urut') this.noUrut,
      this.foto,
      this.visi,
      this.misi,
      @JsonKey(name: 'deleted_at') this.deletedAt,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      this.ormawa,
      this.pemira,
      @JsonKey(name: 'calon_ketua') this.calonKetua,
      @JsonKey(name: 'calon_wakil') this.calonWakil});

  factory _$_KandidatModel.fromJson(Map<String, dynamic> json) =>
      _$$_KandidatModelFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'id_clnKetua')
  final int? idClnKetua;
  @override
  @JsonKey(name: 'id_clnWakil')
  final int? idClnWakil;
  @override
  @JsonKey(name: 'id_pemira')
  final int? idPemira;
  @override
  @JsonKey(name: 'id_ormawa')
  final int? idOrmawa;
  @override
  @JsonKey(name: 'no_urut')
  final int? noUrut;
  @override
  final String? foto;
  @override
  final String? visi;
  @override
  final String? misi;
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
  final Ormawa? ormawa;
  @override
  final Pemira? pemira;
  @override
  @JsonKey(name: 'calon_ketua')
  final CalonKetua? calonKetua;
  @override
  @JsonKey(name: 'calon_wakil')
  final CalonWakil? calonWakil;

  @override
  String toString() {
    return 'KandidatModel(id: $id, idClnKetua: $idClnKetua, idClnWakil: $idClnWakil, idPemira: $idPemira, idOrmawa: $idOrmawa, noUrut: $noUrut, foto: $foto, visi: $visi, misi: $misi, deletedAt: $deletedAt, createdAt: $createdAt, updatedAt: $updatedAt, ormawa: $ormawa, pemira: $pemira, calonKetua: $calonKetua, calonWakil: $calonWakil)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KandidatModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.idClnKetua, idClnKetua) &&
            const DeepCollectionEquality()
                .equals(other.idClnWakil, idClnWakil) &&
            const DeepCollectionEquality().equals(other.idPemira, idPemira) &&
            const DeepCollectionEquality().equals(other.idOrmawa, idOrmawa) &&
            const DeepCollectionEquality().equals(other.noUrut, noUrut) &&
            const DeepCollectionEquality().equals(other.foto, foto) &&
            const DeepCollectionEquality().equals(other.visi, visi) &&
            const DeepCollectionEquality().equals(other.misi, misi) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.ormawa, ormawa) &&
            const DeepCollectionEquality().equals(other.pemira, pemira) &&
            const DeepCollectionEquality()
                .equals(other.calonKetua, calonKetua) &&
            const DeepCollectionEquality()
                .equals(other.calonWakil, calonWakil));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(idClnKetua),
      const DeepCollectionEquality().hash(idClnWakil),
      const DeepCollectionEquality().hash(idPemira),
      const DeepCollectionEquality().hash(idOrmawa),
      const DeepCollectionEquality().hash(noUrut),
      const DeepCollectionEquality().hash(foto),
      const DeepCollectionEquality().hash(visi),
      const DeepCollectionEquality().hash(misi),
      const DeepCollectionEquality().hash(deletedAt),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(ormawa),
      const DeepCollectionEquality().hash(pemira),
      const DeepCollectionEquality().hash(calonKetua),
      const DeepCollectionEquality().hash(calonWakil));

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
          {final int? id,
          @JsonKey(name: 'id_clnKetua') final int? idClnKetua,
          @JsonKey(name: 'id_clnWakil') final int? idClnWakil,
          @JsonKey(name: 'id_pemira') final int? idPemira,
          @JsonKey(name: 'id_ormawa') final int? idOrmawa,
          @JsonKey(name: 'no_urut') final int? noUrut,
          final String? foto,
          final String? visi,
          final String? misi,
          @JsonKey(name: 'deleted_at') final dynamic deletedAt,
          @JsonKey(name: 'created_at') final int? createdAt,
          @JsonKey(name: 'updated_at') final int? updatedAt,
          final Ormawa? ormawa,
          final Pemira? pemira,
          @JsonKey(name: 'calon_ketua') final CalonKetua? calonKetua,
          @JsonKey(name: 'calon_wakil') final CalonWakil? calonWakil}) =
      _$_KandidatModel;

  factory _KandidatModel.fromJson(Map<String, dynamic> json) =
      _$_KandidatModel.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'id_clnKetua')
  int? get idClnKetua => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'id_clnWakil')
  int? get idClnWakil => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'id_pemira')
  int? get idPemira => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'id_ormawa')
  int? get idOrmawa => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'no_urut')
  int? get noUrut => throw _privateConstructorUsedError;
  @override
  String? get foto => throw _privateConstructorUsedError;
  @override
  String? get visi => throw _privateConstructorUsedError;
  @override
  String? get misi => throw _privateConstructorUsedError;
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
  Ormawa? get ormawa => throw _privateConstructorUsedError;
  @override
  Pemira? get pemira => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'calon_ketua')
  CalonKetua? get calonKetua => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'calon_wakil')
  CalonWakil? get calonWakil => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_KandidatModelCopyWith<_$_KandidatModel> get copyWith =>
      throw _privateConstructorUsedError;
}
