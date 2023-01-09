import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gui/model/service/catalog_item_service.dart';
import 'package:flutter_gui/repository/catalog_item_repository.dart';
import 'package:flutter_gui/ui/buttons/ButtonWithIcon.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../firebase_options.dart';
import '../model/entity/catalog_item_model.dart';

/// firebase initialize

final firebaseInitializeProvider = FutureProvider<FirebaseApp>((ref) async {
  return await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
});

/// CatalogItems
final catalogItemsProvider = FutureProvider<List<CatalogItem>>((ref) {
  final service = CatalogItemService(repository: CatalogItemRepository());
  return service.getCatalogItems();
});

/// WidgetToShow
final selectedWidgetProvider =
    StateProvider.autoDispose<Widget>((ref) => const ButtonWithIcon());

final categoryProvider = StateProvider<String>((ref) => '/buttons');
final filePathProvider = StateProvider<String>((ref) => 'ButtonWithIcon');
