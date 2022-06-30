// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'mahasiswa.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Mahasiswa _$MahasiswaFromJson(Map<String, dynamic> json) {
  return _Mahasiswa.fromJson(json);
}

/// @nodoc
mixin _$Mahasiswa {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_jurusan')
  int? get idJurusan => throw _privateConstructorUsedError;
  int? get nim => throw _privateConstructorUsedError;
  String? get nama => throw _privateConstructorUsedError;
  String? get angkatan => throw _privateConstructorUsedError;
  String? get kelas => throw _privateConstructorUsedError;
  String? get foto => throw _privateConstructorUsedError;
  @JsonKey(name: 'sudah_vote')
  int? get sudahVote => throw _privateConstructorUsedError;
  @JsonKey(name: 'deleted_at')
  dynamic get deletedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  int? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  int? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MahasiswaCopyWith<Mahasiswa> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MahasiswaCopyWith<$Res> {
  factory $MahasiswaCopyWith(Mahasiswa value, $Res Function(Mahasiswa) then) =
      _$MahasiswaCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      @JsonKey(name: 'id_jurusan') int? idJurusan,
      int? nim,
      String? nama,
      String? angkatan,
      String? kelas,
      String? foto,
      @JsonKey(name: 'sudah_vote') int? sudahVote,
      @JsonKey(name: 'deleted_at') dynamic deletedAt,
      @JsonKey(name: 'created_at') int? createdAt,
      @JsonKey(name: 'updated_at') int? updatedAt});
}

/// @nodoc
class _$MahasiswaCopyWithImpl<$Res> implements $MahasiswaCopyWith<$Res> {
  _$MahasiswaCopyWithImpl(this._value, this._then);

  final Mahasiswa _value;
  // ignore: unused_field
  final $Res Function(Mahasiswa) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? idJurusan = freezed,
    Object? nim = freezed,
    Object? nama = freezed,
    Object? angkatan = freezed,
    Object? kelas = freezed,
    Object? foto = freezed,
    Object? sudahVote = freezed,
    Object? deletedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      idJurusan: idJurusan == freezed
          ? _value.idJurusan
          : idJurusan // ignore: cast_nullable_to_non_nullable
              as int?,
      nim: nim == freezed
          ? _value.nim
          : nim // ignore: cast_nullable_to_non_nullable
              as int?,
      nama: nama == freezed
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String?,
      angkatan: angkatan == freezed
          ? _value.angkatan
          : angkatan // ignore: cast_nullable_to_non_nullable
              as String?,
      kelas: kelas == freezed
          ? _value.kelas
          : kelas // ignore: cast_nullable_to_non_nullable
              as String?,
      foto: foto == freezed
          ? _value.foto
          : foto // ignore: cast_nullable_to_non_nullable
              as String?,
      sudahVote: sudahVote == freezed
          ? _value.sudahVote
          : sudahVote // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$$_MahasiswaCopyWith<$Res> implements $MahasiswaCopyWith<$Res> {
  factory _$$_MahasiswaCopyWith(
          _$_Mahasiswa value, $Res Function(_$_Mahasiswa) then) =
      __$$_MahasiswaCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      @JsonKey(name: 'id_jurusan') int? idJurusan,
      int? nim,
      String? nama,
      String? angkatan,
      String? kelas,
      String? foto,
      @JsonKey(name: 'sudah_vote') int? sudahVote,
      @JsonKey(name: 'deleted_at') dynamic deletedAt,
      @JsonKey(name: 'created_at') int? createdAt,
      @JsonKey(name: 'updated_at') int? updatedAt});
}

/// @nodoc
class __$$_MahasiswaCopyWithImpl<$Res> extends _$MahasiswaCopyWithImpl<$Res>
    implements _$$_MahasiswaCopyWith<$Res> {
  __$$_MahasiswaCopyWithImpl(
      _$_Mahasiswa _value, $Res Function(_$_Mahasiswa) _then)
      : super(_value, (v) => _then(v as _$_Mahasiswa));

  @override
  _$_Mahasiswa get _value => super._value as _$_Mahasiswa;

  @override
  $Res call({
    Object? id = freezed,
    Object? idJurusan = freezed,
    Object? nim = freezed,
    Object? nama = freezed,
    Object? angkatan = freezed,
    Object? kelas = freezed,
    Object? foto = freezed,
    Object? sudahVote = freezed,
    Object? deletedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_Mahasiswa(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      idJurusan: idJurusan == freezed
          ? _value.idJurusan
          : idJurusan // ignore: cast_nullable_to_non_nullable
              as int?,
      nim: nim == freezed
          ? _value.nim
          : nim // ignore: cast_nullable_to_non_nullable
              as int?,
      nama: nama == freezed
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String?,
      angkatan: angkatan == freezed
          ? _value.angkatan
          : angkatan // ignore: cast_nullable_to_non_nullable
              as String?,
      kelas: kelas == freezed
          ? _value.kelas
          : kelas // ignore: cast_nullable_to_non_nullable
              as String?,
      foto: foto == freezed
          ? _value.foto
          : foto // ignore: cast_nullable_to_non_nullable
              as String?,
      sudahVote: sudahVote == freezed
          ? _value.sudahVote
          : sudahVote // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$_Mahasiswa implements _Mahasiswa {
  _$_Mahasiswa(
      {this.id,
      @JsonKey(name: 'id_jurusan') this.idJurusan,
      this.nim,
      this.nama,
      this.angkatan,
      this.kelas,
      this.foto,
      @JsonKey(name: 'sudah_vote') this.sudahVote,
      @JsonKey(name: 'deleted_at') this.deletedAt,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$_Mahasiswa.fromJson(Map<String, dynamic> json) =>
      _$$_MahasiswaFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'id_jurusan')
  final int? idJurusan;
  @override
  final int? nim;
  @override
  final String? nama;
  @override
  final String? angkatan;
  @override
  final String? kelas;
  @override
  final String? foto;
  @override
  @JsonKey(name: 'sudah_vote')
  final int? sudahVote;
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
    return 'Mahasiswa(id: $id, idJurusan: $idJurusan, nim: $nim, nama: $nama, angkatan: $angkatan, kelas: $kelas, foto: $foto, sudahVote: $sudahVote, deletedAt: $deletedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Mahasiswa &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.idJurusan, idJurusan) &&
            const DeepCollectionEquality().equals(other.nim, nim) &&
            const DeepCollectionEquality().equals(other.nama, nama) &&
            const DeepCollectionEquality().equals(other.angkatan, angkatan) &&
            const DeepCollectionEquality().equals(other.kelas, kelas) &&
            const DeepCollectionEquality().equals(other.foto, foto) &&
            const DeepCollectionEquality().equals(other.sudahVote, sudahVote) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(idJurusan),
      const DeepCollectionEquality().hash(nim),
      const DeepCollectionEquality().hash(nama),
      const DeepCollectionEquality().hash(angkatan),
      const DeepCollectionEquality().hash(kelas),
      const DeepCollectionEquality().hash(foto),
      const DeepCollectionEquality().hash(sudahVote),
      const DeepCollectionEquality().hash(deletedAt),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$$_MahasiswaCopyWith<_$_Mahasiswa> get copyWith =>
      __$$_MahasiswaCopyWithImpl<_$_Mahasiswa>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MahasiswaToJson(this);
  }
}

abstract class _Mahasiswa implements Mahasiswa {
  factory _Mahasiswa(
      {final int? id,
      @JsonKey(name: 'id_jurusan') final int? idJurusan,
      final int? nim,
      final String? nama,
      final String? angkatan,
      final String? kelas,
      final String? foto,
      @JsonKey(name: 'sudah_vote') final int? sudahVote,
      @JsonKey(name: 'deleted_at') final dynamic deletedAt,
      @JsonKey(name: 'created_at') final int? createdAt,
      @JsonKey(name: 'updated_at') final int? updatedAt}) = _$_Mahasiswa;

  factory _Mahasiswa.fromJson(Map<String, dynamic> json) =
      _$_Mahasiswa.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'id_jurusan')
  int? get idJurusan => throw _privateConstructorUsedError;
  @override
  int? get nim => throw _privateConstructorUsedError;
  @override
  String? get nama => throw _privateConstructorUsedError;
  @override
  String? get angkatan => throw _privateConstructorUsedError;
  @override
  String? get kelas => throw _privateConstructorUsedError;
  @override
  String? get foto => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'sudah_vote')
  int? get sudahVote => throw _privateConstructorUsedError;
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
  _$$_MahasiswaCopyWith<_$_Mahasiswa> get copyWith =>
      throw _privateConstructorUsedError;
}
