// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_menu_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CatalogMenu _$CatalogMenuFromJson(Map<String, dynamic> json) {
  return _CatalogMenu.fromJson(json);
}

/// @nodoc
mixin _$CatalogMenu {
  @JsonKey(name: 'dirPath')
  String get dirPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'filePath')
  String get filePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatalogMenuCopyWith<CatalogMenu> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogMenuCopyWith<$Res> {
  factory $CatalogMenuCopyWith(
          CatalogMenu value, $Res Function(CatalogMenu) then) =
      _$CatalogMenuCopyWithImpl<$Res, CatalogMenu>;
  @useResult
  $Res call(
      {@JsonKey(name: 'dirPath') String dirPath,
      @JsonKey(name: 'filePath') String filePath});
}

/// @nodoc
class _$CatalogMenuCopyWithImpl<$Res, $Val extends CatalogMenu>
    implements $CatalogMenuCopyWith<$Res> {
  _$CatalogMenuCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dirPath = null,
    Object? filePath = null,
  }) {
    return _then(_value.copyWith(
      dirPath: null == dirPath
          ? _value.dirPath
          : dirPath // ignore: cast_nullable_to_non_nullable
              as String,
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CatalogMenuCopyWith<$Res>
    implements $CatalogMenuCopyWith<$Res> {
  factory _$$_CatalogMenuCopyWith(
          _$_CatalogMenu value, $Res Function(_$_CatalogMenu) then) =
      __$$_CatalogMenuCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'dirPath') String dirPath,
      @JsonKey(name: 'filePath') String filePath});
}

/// @nodoc
class __$$_CatalogMenuCopyWithImpl<$Res>
    extends _$CatalogMenuCopyWithImpl<$Res, _$_CatalogMenu>
    implements _$$_CatalogMenuCopyWith<$Res> {
  __$$_CatalogMenuCopyWithImpl(
      _$_CatalogMenu _value, $Res Function(_$_CatalogMenu) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dirPath = null,
    Object? filePath = null,
  }) {
    return _then(_$_CatalogMenu(
      dirPath: null == dirPath
          ? _value.dirPath
          : dirPath // ignore: cast_nullable_to_non_nullable
              as String,
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CatalogMenu extends _CatalogMenu {
  const _$_CatalogMenu(
      {@JsonKey(name: 'dirPath') required this.dirPath,
      @JsonKey(name: 'filePath') required this.filePath})
      : super._();

  factory _$_CatalogMenu.fromJson(Map<String, dynamic> json) =>
      _$$_CatalogMenuFromJson(json);

  @override
  @JsonKey(name: 'dirPath')
  final String dirPath;
  @override
  @JsonKey(name: 'filePath')
  final String filePath;

  @override
  String toString() {
    return 'CatalogMenu(dirPath: $dirPath, filePath: $filePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CatalogMenu &&
            (identical(other.dirPath, dirPath) || other.dirPath == dirPath) &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, dirPath, filePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CatalogMenuCopyWith<_$_CatalogMenu> get copyWith =>
      __$$_CatalogMenuCopyWithImpl<_$_CatalogMenu>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CatalogMenuToJson(
      this,
    );
  }
}

abstract class _CatalogMenu extends CatalogMenu {
  const factory _CatalogMenu(
          {@JsonKey(name: 'dirPath') required final String dirPath,
          @JsonKey(name: 'filePath') required final String filePath}) =
      _$_CatalogMenu;
  const _CatalogMenu._() : super._();

  factory _CatalogMenu.fromJson(Map<String, dynamic> json) =
      _$_CatalogMenu.fromJson;

  @override
  @JsonKey(name: 'dirPath')
  String get dirPath;
  @override
  @JsonKey(name: 'filePath')
  String get filePath;
  @override
  @JsonKey(ignore: true)
  _$$_CatalogMenuCopyWith<_$_CatalogMenu> get copyWith =>
      throw _privateConstructorUsedError;
}
