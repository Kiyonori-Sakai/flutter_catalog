import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'firebase_options.dart';
import 'ui/catalog_page.dart';
import 'viewmodel/providers.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final initialize = ref.watch(firebaseInitializeProvider);
    return MaterialApp(
      title: 'Flutter Catalog',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: initialize.when(
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
        data: (data) {
          // return const AuthChecker();
          return const CatalogPage();
          // return const SignUpPage();
        },
        error: (error, stack) => _buildErrorView(ref),
      ),
    );
  }

  Widget _buildErrorView(WidgetRef ref) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('読み込みに失敗しました。'),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () async {
              // ignore: unused_result
              ref.refresh(firebaseInitializeProvider);
            },
            child: Container(
              height: 30,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey,
              ),
              child: const Center(
                child: Text('再読み込み'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
