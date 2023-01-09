import 'package:flutter_gui/repository/catalog_item_repository.dart';

import '../entity/catalog_item_model.dart';

class CatalogItemService {
  const CatalogItemService({
    required CatalogItemRepository repository,
  }) : _repository = repository;

  final CatalogItemRepository _repository;

  Future<List<CatalogItem>> getCatalogItems() {
    return _repository.getCatalogItems();
  }
}
