import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gui/ui/item_tile.dart';
import 'package:flutter_gui/viewmodel/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

const repositoryBaseUrl =
    'https://github.com/Kiyonori-Sakai/flutter_catalog/blob/main/lib/ui';

class CatalogPage extends ConsumerWidget {
  const CatalogPage({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final catalogItems = ref.watch(catalogItemsProvider);
    return Scaffold(
      body: catalogItems.when(
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
        data: (items) {
          return Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.2,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                      child: Center(
                        child: Text('Widgets'),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height - 30,
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                      ),
                      child: Column(
                        children: [
                          for (final item in items)
                            ItemTile(
                              category: item.category,
                              fileList: item.menus,
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                      child: Center(
                        child: Text('Image View'),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height - 30,
                      child: ref.watch(selectedWidgetProvider),
                    ),
                  ],
                ),
              ),
              _buildCodeView(context: context, ref: ref),
            ],
          );
        },
        error: (error, stack) => _buildErrorView(ref),
      ),
    );
  }

  Widget _buildCodeView({
    required BuildContext context,
    required WidgetRef ref,
  }) {
    final category = ref.watch(categoryProvider);
    final filePath = ref.watch(filePathProvider);
    print('filePath => lib/ui$category/$filePath.dart');
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.4,
      child: Column(
        children: [
          const SizedBox(
            height: 30,
            child: Center(
              child: Text('Code'),
            ),
          ),
          SizedBox(
            height: 20,
            child: Center(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Click Here to GitHub',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print('$repositoryBaseUrl$category/$filePath.dart');
                          launchUrl(Uri.parse(
                              '$repositoryBaseUrl$category/$filePath.dart'));
                        },
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height - 50,
            child: WidgetWithCodeView(
              filePath: 'lib/ui$category/$filePath.dart',
              codeLinkPrefix:
                  'https://github.com/Kiyonori-Sakai/flutter_catalog/blob/main/',
              showLabelText: true,
            ),
          ),
        ],
      ),
    );
  }
}

class CodeView extends ConsumerWidget {
  const CodeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final category = ref.watch(categoryProvider);
    final filePath = ref.watch(filePathProvider);
    print('filePath => lib/ui$category/$filePath.dart');
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.4,
      child: Column(
        children: [
          const SizedBox(
            height: 30,
            child: Center(
              child: Text('Code'),
            ),
          ),
          SizedBox(
            height: 20,
            child: Center(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Click Here to GitHub',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print('$repositoryBaseUrl$category/$filePath.dart');
                          launchUrl(Uri.parse(
                              '$repositoryBaseUrl$category/$filePath.dart'));
                        },
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height - 50,
            child: WidgetWithCodeView(
              filePath: 'lib/ui/buttons/ButtonWithIcon.dart',
              codeLinkPrefix:
                  'https://github.com/Kiyonori-Sakai/flutter_catalog/blob/main/',
              showLabelText: true,
            ),
          ),
        ],
      ),
    );
  }
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
            ref.refresh(catalogItemsProvider);
          },
          child: Container(
            height: 30,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xffdfdee1),
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
