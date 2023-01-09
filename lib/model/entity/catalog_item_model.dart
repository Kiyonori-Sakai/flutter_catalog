import 'package:freezed_annotation/freezed_annotation.dart';

import 'catalog_menu_model.dart';

part 'catalog_item_model.freezed.dart';
part 'catalog_item_model.g.dart';

@freezed
class CatalogItem with _$CatalogItem {
  const CatalogItem._();
  const factory CatalogItem({
    @JsonKey(name: 'category') required String category,
    @JsonKey(name: 'menus') required List<CatalogMenu> menus,
  }) = _CatalogItem;

  factory CatalogItem.fromJson(Map<String, dynamic> json) =>
      _$CatalogItemFromJson(json);
}
