// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_item_model.dart';

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
  @JsonKey(name: 'category')
  String get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'menus')
  List<CatalogMenu> get menus => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'category') String category,
      @JsonKey(name: 'menus') List<CatalogMenu> menus});
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
    Object? category = null,
    Object? menus = null,
  }) {
    return _then(_value.copyWith(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      menus: null == menus
          ? _value.menus
          : menus // ignore: cast_nullable_to_non_nullable
              as List<CatalogMenu>,
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
      {@JsonKey(name: 'category') String category,
      @JsonKey(name: 'menus') List<CatalogMenu> menus});
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
    Object? category = null,
    Object? menus = null,
  }) {
    return _then(_$_CatalogMenu(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      menus: null == menus
          ? _value._menus
          : menus // ignore: cast_nullable_to_non_nullable
              as List<CatalogMenu>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CatalogMenu extends _CatalogMenu {
  const _$_CatalogMenu(
      {@JsonKey(name: 'category') required this.category,
      @JsonKey(name: 'menus') required final List<CatalogMenu> menus})
      : _menus = menus,
        super._();

  factory _$_CatalogMenu.fromJson(Map<String, dynamic> json) =>
      _$$_CatalogMenuFromJson(json);

  @override
  @JsonKey(name: 'category')
  final String category;
  final List<CatalogMenu> _menus;
  @override
  @JsonKey(name: 'menus')
  List<CatalogMenu> get menus {
    if (_menus is EqualUnmodifiableListView) return _menus;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_menus);
  }

  @override
  String toString() {
    return 'CatalogMenu(category: $category, menus: $menus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CatalogMenu &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other._menus, _menus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, category, const DeepCollectionEquality().hash(_menus));

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
          {@JsonKey(name: 'category') required final String category,
          @JsonKey(name: 'menus') required final List<CatalogMenu> menus}) =
      _$_CatalogMenu;
  const _CatalogMenu._() : super._();

  factory _CatalogMenu.fromJson(Map<String, dynamic> json) =
      _$_CatalogMenu.fromJson;

  @override
  @JsonKey(name: 'category')
  String get category;
  @override
  @JsonKey(name: 'menus')
  List<CatalogMenu> get menus;
  @override
  @JsonKey(ignore: true)
  _$$_CatalogMenuCopyWith<_$_CatalogMenu> get copyWith =>
      throw _privateConstructorUsedError;
}
