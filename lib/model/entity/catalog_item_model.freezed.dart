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

CatalogItem _$CatalogItemFromJson(Map<String, dynamic> json) {
  return _CatalogItem.fromJson(json);
}

/// @nodoc
mixin _$CatalogItem {
  @JsonKey(name: 'category')
  String get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'menus')
  List<String> get menus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatalogItemCopyWith<CatalogItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogItemCopyWith<$Res> {
  factory $CatalogItemCopyWith(
          CatalogItem value, $Res Function(CatalogItem) then) =
      _$CatalogItemCopyWithImpl<$Res, CatalogItem>;
  @useResult
  $Res call(
      {@JsonKey(name: 'category') String category,
      @JsonKey(name: 'menus') List<String> menus});
}

/// @nodoc
class _$CatalogItemCopyWithImpl<$Res, $Val extends CatalogItem>
    implements $CatalogItemCopyWith<$Res> {
  _$CatalogItemCopyWithImpl(this._value, this._then);

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
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CatalogItemCopyWith<$Res>
    implements $CatalogItemCopyWith<$Res> {
  factory _$$_CatalogItemCopyWith(
          _$_CatalogItem value, $Res Function(_$_CatalogItem) then) =
      __$$_CatalogItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'category') String category,
      @JsonKey(name: 'menus') List<String> menus});
}

/// @nodoc
class __$$_CatalogItemCopyWithImpl<$Res>
    extends _$CatalogItemCopyWithImpl<$Res, _$_CatalogItem>
    implements _$$_CatalogItemCopyWith<$Res> {
  __$$_CatalogItemCopyWithImpl(
      _$_CatalogItem _value, $Res Function(_$_CatalogItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? menus = null,
  }) {
    return _then(_$_CatalogItem(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      menus: null == menus
          ? _value._menus
          : menus // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CatalogItem extends _CatalogItem {
  const _$_CatalogItem(
      {@JsonKey(name: 'category') required this.category,
      @JsonKey(name: 'menus') required final List<String> menus})
      : _menus = menus,
        super._();

  factory _$_CatalogItem.fromJson(Map<String, dynamic> json) =>
      _$$_CatalogItemFromJson(json);

  @override
  @JsonKey(name: 'category')
  final String category;
  final List<String> _menus;
  @override
  @JsonKey(name: 'menus')
  List<String> get menus {
    if (_menus is EqualUnmodifiableListView) return _menus;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_menus);
  }

  @override
  String toString() {
    return 'CatalogItem(category: $category, menus: $menus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CatalogItem &&
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
  _$$_CatalogItemCopyWith<_$_CatalogItem> get copyWith =>
      __$$_CatalogItemCopyWithImpl<_$_CatalogItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CatalogItemToJson(
      this,
    );
  }
}

abstract class _CatalogItem extends CatalogItem {
  const factory _CatalogItem(
          {@JsonKey(name: 'category') required final String category,
          @JsonKey(name: 'menus') required final List<String> menus}) =
      _$_CatalogItem;
  const _CatalogItem._() : super._();

  factory _CatalogItem.fromJson(Map<String, dynamic> json) =
      _$_CatalogItem.fromJson;

  @override
  @JsonKey(name: 'category')
  String get category;
  @override
  @JsonKey(name: 'menus')
  List<String> get menus;
  @override
  @JsonKey(ignore: true)
  _$$_CatalogItemCopyWith<_$_CatalogItem> get copyWith =>
      throw _privateConstructorUsedError;
}
