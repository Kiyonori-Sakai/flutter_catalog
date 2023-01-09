// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CatalogMenu _$$_CatalogMenuFromJson(Map<String, dynamic> json) =>
    _$_CatalogMenu(
      category: json['category'] as String,
      menus: (json['menus'] as List<dynamic>)
          .map((e) => CatalogMenu.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CatalogMenuToJson(_$_CatalogMenu instance) =>
    <String, dynamic>{
      'category': instance.category,
      'menus': instance.menus,
    };
