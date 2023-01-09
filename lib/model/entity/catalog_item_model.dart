import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_item_model.freezed.dart';
part 'catalog_item_model.g.dart';

@freezed
class CatalogItem with _$CatalogItem {
  const CatalogItem._();
  const factory CatalogItem({
    @JsonKey(name: 'category') required String category,
    @JsonKey(name: 'menus') required List<String> menus,
  }) = _CatalogItem;

  factory CatalogItem.fromJson(Map<String, dynamic> json) =>
      _$CatalogItemFromJson(json);
}
