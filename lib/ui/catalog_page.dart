import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gui/ui/buttons/ColoredButton.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

const repositoryBaseUrl =
    'https://github.com/Kiyonori-Sakai/flutter_catalog/blob/main/lib/ui';

class CatalogPage extends StatelessWidget {
  const CatalogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
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
                  child: const ColoredButton(),
                ),
              ],
            ),
          ),
          const CodeView(
            filePath: 'ButtonPage',
          ),
        ],
      ),
    );
  }
}

class CodeView extends StatelessWidget {
  const CodeView({
    Key? key,
    required this.filePath,
  }) : super(key: key);
  final String filePath;

  @override
  Widget build(BuildContext context) {
    const path = 'buttons_page';
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
                          launchUrl(Uri.parse('$repositoryBaseUrl/$path.dart'));
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
              filePath: 'lib/ui/$filePath.dart',
              showLabelText: true,
            ),
          ),
        ],
      ),
    );
  }
}
