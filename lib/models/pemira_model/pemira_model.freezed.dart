// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pemira_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PemiraModel _$PemiraModelFromJson(Map<String, dynamic> json) {
  return _PemiraModel.fromJson(json);
}

/// @nodoc
mixin _$PemiraModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_ormawa')
  int? get idOrmawa => throw _privateConstructorUsedError;
  String? get nama => throw _privateConstructorUsedError;
  String? get foto => throw _privateConstructorUsedError;
  String? get deskripsi => throw _privateConstructorUsedError;
  String? get tanggal => throw _privateConstructorUsedError;
  @JsonKey(name: 'waktu_mulai')
  String? get waktuMulai => throw _privateConstructorUsedError;
  @JsonKey(name: 'waktu_selesai')
  String? get waktuSelesai => throw _privateConstructorUsedError;
  @JsonKey(name: 'deleted_at')
  dynamic get deletedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  int? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  int? get updatedAt => throw _privateConstructorUsedError;
  Ormawa? get ormawa => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PemiraModelCopyWith<PemiraModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PemiraModelCopyWith<$Res> {
  factory $PemiraModelCopyWith(
          PemiraModel value, $Res Function(PemiraModel) then) =
      _$PemiraModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      @JsonKey(name: 'id_ormawa') int? idOrmawa,
      String? nama,
      String? foto,
      String? deskripsi,
      String? tanggal,
      @JsonKey(name: 'waktu_mulai') String? waktuMulai,
      @JsonKey(name: 'waktu_selesai') String? waktuSelesai,
      @JsonKey(name: 'deleted_at') dynamic deletedAt,
      @JsonKey(name: 'created_at') int? createdAt,
      @JsonKey(name: 'updated_at') int? updatedAt,
      Ormawa? ormawa});

  $OrmawaCopyWith<$Res>? get ormawa;
}

/// @nodoc
class _$PemiraModelCopyWithImpl<$Res> implements $PemiraModelCopyWith<$Res> {
  _$PemiraModelCopyWithImpl(this._value, this._then);

  final PemiraModel _value;
  // ignore: unused_field
  final $Res Function(PemiraModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? idOrmawa = freezed,
    Object? nama = freezed,
    Object? foto = freezed,
    Object? deskripsi = freezed,
    Object? tanggal = freezed,
    Object? waktuMulai = freezed,
    Object? waktuSelesai = freezed,
    Object? deletedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? ormawa = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      idOrmawa: idOrmawa == freezed
          ? _value.idOrmawa
          : idOrmawa // ignore: cast_nullable_to_non_nullable
              as int?,
      nama: nama == freezed
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String?,
      foto: foto == freezed
          ? _value.foto
          : foto // ignore: cast_nullable_to_non_nullable
              as String?,
      deskripsi: deskripsi == freezed
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggal: tanggal == freezed
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as String?,
      waktuMulai: waktuMulai == freezed
          ? _value.waktuMulai
          : waktuMulai // ignore: cast_nullable_to_non_nullable
              as String?,
      waktuSelesai: waktuSelesai == freezed
          ? _value.waktuSelesai
          : waktuSelesai // ignore: cast_nullable_to_non_nullable
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
}

/// @nodoc
abstract class _$$_PemiraModelCopyWith<$Res>
    implements $PemiraModelCopyWith<$Res> {
  factory _$$_PemiraModelCopyWith(
          _$_PemiraModel value, $Res Function(_$_PemiraModel) then) =
      __$$_PemiraModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      @JsonKey(name: 'id_ormawa') int? idOrmawa,
      String? nama,
      String? foto,
      String? deskripsi,
      String? tanggal,
      @JsonKey(name: 'waktu_mulai') String? waktuMulai,
      @JsonKey(name: 'waktu_selesai') String? waktuSelesai,
      @JsonKey(name: 'deleted_at') dynamic deletedAt,
      @JsonKey(name: 'created_at') int? createdAt,
      @JsonKey(name: 'updated_at') int? updatedAt,
      Ormawa? ormawa});

  @override
  $OrmawaCopyWith<$Res>? get ormawa;
}

/// @nodoc
class __$$_PemiraModelCopyWithImpl<$Res> extends _$PemiraModelCopyWithImpl<$Res>
    implements _$$_PemiraModelCopyWith<$Res> {
  __$$_PemiraModelCopyWithImpl(
      _$_PemiraModel _value, $Res Function(_$_PemiraModel) _then)
      : super(_value, (v) => _then(v as _$_PemiraModel));

  @override
  _$_PemiraModel get _value => super._value as _$_PemiraModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? idOrmawa = freezed,
    Object? nama = freezed,
    Object? foto = freezed,
    Object? deskripsi = freezed,
    Object? tanggal = freezed,
    Object? waktuMulai = freezed,
    Object? waktuSelesai = freezed,
    Object? deletedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? ormawa = freezed,
  }) {
    return _then(_$_PemiraModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      idOrmawa: idOrmawa == freezed
          ? _value.idOrmawa
          : idOrmawa // ignore: cast_nullable_to_non_nullable
              as int?,
      nama: nama == freezed
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String?,
      foto: foto == freezed
          ? _value.foto
          : foto // ignore: cast_nullable_to_non_nullable
              as String?,
      deskripsi: deskripsi == freezed
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggal: tanggal == freezed
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as String?,
      waktuMulai: waktuMulai == freezed
          ? _value.waktuMulai
          : waktuMulai // ignore: cast_nullable_to_non_nullable
              as String?,
      waktuSelesai: waktuSelesai == freezed
          ? _value.waktuSelesai
          : waktuSelesai // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PemiraModel implements _PemiraModel {
  _$_PemiraModel(
      {this.id,
      @JsonKey(name: 'id_ormawa') this.idOrmawa,
      this.nama,
      this.foto,
      this.deskripsi,
      this.tanggal,
      @JsonKey(name: 'waktu_mulai') this.waktuMulai,
      @JsonKey(name: 'waktu_selesai') this.waktuSelesai,
      @JsonKey(name: 'deleted_at') this.deletedAt,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      this.ormawa});

  factory _$_PemiraModel.fromJson(Map<String, dynamic> json) =>
      _$$_PemiraModelFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'id_ormawa')
  final int? idOrmawa;
  @override
  final String? nama;
  @override
  final String? foto;
  @override
  final String? deskripsi;
  @override
  final String? tanggal;
  @override
  @JsonKey(name: 'waktu_mulai')
  final String? waktuMulai;
  @override
  @JsonKey(name: 'waktu_selesai')
  final String? waktuSelesai;
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
  String toString() {
    return 'PemiraModel(id: $id, idOrmawa: $idOrmawa, nama: $nama, foto: $foto, deskripsi: $deskripsi, tanggal: $tanggal, waktuMulai: $waktuMulai, waktuSelesai: $waktuSelesai, deletedAt: $deletedAt, createdAt: $createdAt, updatedAt: $updatedAt, ormawa: $ormawa)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PemiraModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.idOrmawa, idOrmawa) &&
            const DeepCollectionEquality().equals(other.nama, nama) &&
            const DeepCollectionEquality().equals(other.foto, foto) &&
            const DeepCollectionEquality().equals(other.deskripsi, deskripsi) &&
            const DeepCollectionEquality().equals(other.tanggal, tanggal) &&
            const DeepCollectionEquality()
                .equals(other.waktuMulai, waktuMulai) &&
            const DeepCollectionEquality()
                .equals(other.waktuSelesai, waktuSelesai) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.ormawa, ormawa));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(idOrmawa),
      const DeepCollectionEquality().hash(nama),
      const DeepCollectionEquality().hash(foto),
      const DeepCollectionEquality().hash(deskripsi),
      const DeepCollectionEquality().hash(tanggal),
      const DeepCollectionEquality().hash(waktuMulai),
      const DeepCollectionEquality().hash(waktuSelesai),
      const DeepCollectionEquality().hash(deletedAt),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(ormawa));

  @JsonKey(ignore: true)
  @override
  _$$_PemiraModelCopyWith<_$_PemiraModel> get copyWith =>
      __$$_PemiraModelCopyWithImpl<_$_PemiraModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PemiraModelToJson(this);
  }
}

abstract class _PemiraModel implements PemiraModel {
  factory _PemiraModel(
      {final int? id,
      @JsonKey(name: 'id_ormawa') final int? idOrmawa,
      final String? nama,
      final String? foto,
      final String? deskripsi,
      final String? tanggal,
      @JsonKey(name: 'waktu_mulai') final String? waktuMulai,
      @JsonKey(name: 'waktu_selesai') final String? waktuSelesai,
      @JsonKey(name: 'deleted_at') final dynamic deletedAt,
      @JsonKey(name: 'created_at') final int? createdAt,
      @JsonKey(name: 'updated_at') final int? updatedAt,
      final Ormawa? ormawa}) = _$_PemiraModel;

  factory _PemiraModel.fromJson(Map<String, dynamic> json) =
      _$_PemiraModel.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'id_ormawa')
  int? get idOrmawa => throw _privateConstructorUsedError;
  @override
  String? get nama => throw _privateConstructorUsedError;
  @override
  String? get foto => throw _privateConstructorUsedError;
  @override
  String? get deskripsi => throw _privateConstructorUsedError;
  @override
  String? get tanggal => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'waktu_mulai')
  String? get waktuMulai => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'waktu_selesai')
  String? get waktuSelesai => throw _privateConstructorUsedError;
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
  @JsonKey(ignore: true)
  _$$_PemiraModelCopyWith<_$_PemiraModel> get copyWith =>
      throw _privateConstructorUsedError;
}
