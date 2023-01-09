import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_menu_model.freezed.dart';
part 'catalog_menu_model.g.dart';

@freezed
class CatalogMenu with _$CatalogMenu {
  const CatalogMenu._();
  const factory CatalogMenu({
    @JsonKey(name: 'dirPath') required String dirPath,
    @JsonKey(name: 'filePath') required String filePath,
  }) = _CatalogMenu;

  factory CatalogMenu.fromJson(Map<String, dynamic> json) =>
      _$CatalogMenuFromJson(json);
}
