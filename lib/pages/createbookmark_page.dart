import 'package:bookmarksbywang/config/application.dart';
import 'package:bookmarksbywang/provider/bookmark_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CreateBookmarkPage extends ConsumerWidget {
  final _titleTextController = TextEditingController();

  final _urlTextController = TextEditingController();

  final _titleFocusNode = FocusNode();

  final _urlFocusNode = FocusNode();

  CreateBookmarkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text("新規ブックマック")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                  icon: Icon(Icons.book),
                  labelText: "タイトル",
                  border: OutlineInputBorder()),
              autofocus: true,
              focusNode: _titleFocusNode,
              controller: _titleTextController,
              textInputAction: TextInputAction.next,
              maxLength: 10,
              onFieldSubmitted: (textInput) {
                FocusScope.of(context).requestFocus(_urlFocusNode);
              },
            ),
            // SizedBox(height: 16.0),
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: _urlTextController,
              focusNode: _urlFocusNode,
              validator: (value) {
                return (value != null &&
                        value.length >= 4 &&
                        !value.startsWith("http"))
                    ? 'https または http 形式URLを入力してください。'
                    : null;
              },
              decoration: const InputDecoration(
                  icon: Icon(Icons.link),
                  labelText: "リンク",
                  hintText: "Input https or http URL",
                  border: OutlineInputBorder()),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Builder(
        builder: (BuildContext context) {
          return FloatingActionButton.extended(
            label: const Text("保存"),
            icon: const Icon(Icons.add),
            onPressed: () {
              String title = _titleTextController.text;
              String url = _urlTextController.text;

              ScaffoldMessenger.of(context).hideCurrentSnackBar();
              if (title.isNotEmpty && url.isNotEmpty) {
                ref
                    .read(bookMarkListProvider.notifier)
                    .addNewBookmark(title, url);
                Application.router.pop(context);
              } else {
                if (title.isEmpty) {
                  FocusScope.of(context).requestFocus(_titleFocusNode);
                } else {
                  FocusScope.of(context).requestFocus(_urlFocusNode);
                }
              }
            },
          );
        },
      ),
    );
  }
}
