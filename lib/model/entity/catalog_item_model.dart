import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_item_model.freezed.dart';
part 'catalog_item_model.g.dart';

@freezed
class CatalogMenu with _$CatalogMenu {
  const CatalogMenu._();
  const factory CatalogMenu({
    @JsonKey(name: 'category') required String category,
    @JsonKey(name: 'menus') required List<CatalogMenu> menus,
  }) = _CatalogMenu;

  factory CatalogMenu.fromJson(Map<String, dynamic> json) =>
      _$CatalogMenuFromJson(json);
}
