import 'package:bookmarksbywang/component/bookmarksGrid_compoent.dart';
import 'package:bookmarksbywang/component/bookmarksList_component.dart';
import 'package:bookmarksbywang/config/application.dart';
import 'package:bookmarksbywang/model/bookmark.dart';
import 'package:bookmarksbywang/provider/bookmark_provider.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BookmarksPage extends ConsumerStatefulWidget {
  const BookmarksPage({Key? key}) : super(key: key);

  @override
  _BookmarksPageState createState() => _BookmarksPageState();
}

class _BookmarksPageState extends ConsumerState {
  bool isGridMode = false;

  @override
  Widget build(BuildContext context) {
    final List<Bookmark> bookmarkList = ref.watch(bookMarkListProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("ブックバック管理"),
        actions: <Widget>[
          IconButton(
            icon: isGridMode
                ? const Icon(Icons.list, color: Colors.white)
                : const Icon(Icons.grid_on, color: Colors.white),
            onPressed: () {
              setState(() {
                isGridMode = !isGridMode;
              });
            },
          )
        ],
      ),
      body: isGridMode
          ? BookmarksGridComponent(bookmarkList)
          : BookmarkslistComponent(bookmarkList),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.add),
        onPressed: () => onAddButtonPressed(context),
        label: const Text("Add"),
      ),
    );
  }

  void onAddButtonPressed(BuildContext context) {
    Application.router.navigateTo(
      context,
      '/create',
      transition: TransitionType.material,
    );
  }
}
