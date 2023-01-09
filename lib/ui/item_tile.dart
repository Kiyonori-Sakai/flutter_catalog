import 'package:flutter/material.dart';
import 'package:flutter_gui/utils/page_router.dart';
import 'package:flutter_gui/viewmodel/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ItemTile extends ConsumerWidget {
  const ItemTile({
    Key? key,
    required this.category,
    required this.fileList,
  }) : super(key: key);
  final String category;
  final List<String> fileList;

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    return ExpansionTile(
      title: Row(
        children: [
          const Icon(Icons.smart_button),
          const SizedBox(width: 5),
          Text(
            category,
            style: const TextStyle(
              color: Colors.lightBlue,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ],
      ),
      children: [
        for (final file in fileList)
          Container(
            height: 50,
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: Colors.grey.shade200),
              ),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 40,
                right: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    file,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      ref.read(selectedWidgetProvider.notifier).update(
                            (state) => selectFunction(
                              category: category,
                              filePath: file,
                            ),
                          );
                      ref
                          .read(categoryProvider.notifier)
                          .update((state) => category);
                      ref
                          .read(filePathProvider.notifier)
                          .update((state) => file);
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.grey.shade300),
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(horizontal: 18)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ))),
                    child: const Text(
                      'Show',
                      style: TextStyle(
                        color: Colors.indigo,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}

Widget selectFunction({
  required String category,
  required String filePath,
}) {
  switch (category) {
    case '/buttons':
      return setButtonWidget(filePath);
    default:
      return setButtonWidget(filePath);
  }
}
