import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_gui/model/entity/catalog_item_model.dart';

class CatalogItemRepository {
  Future<List<CatalogItem>> getCatalogItems() async {
    final fireStore = FirebaseFirestore.instance;
    final snapshot = await fireStore.collection('CatalogMenu').get();
    final docs = snapshot.docs;
    if (docs.isEmpty) {
      throw Exception('データがありません');
    }
    final contentsList = <CatalogItem>[];
    for (final content in docs) {
      contentsList.add(CatalogItem.fromJson(content.data()));
    }
    return contentsList;
  }
}
