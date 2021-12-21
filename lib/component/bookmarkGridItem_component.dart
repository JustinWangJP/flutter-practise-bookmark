import 'package:bookmarksbywang/model/bookmark.dart';
import 'package:bookmarksbywang/provider/bookmark_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BookmarkGridItemCompoent extends ConsumerWidget {
  final Bookmark bookmark;
  final int selectedIndex;

  const BookmarkGridItemCompoent(this.bookmark, this.selectedIndex);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: InkWell(
          onTap: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(bookmark.name, style: Theme.of(context).textTheme.headline6),
              Text(bookmark.url, style: Theme.of(context).textTheme.subtitle1),
              IconButton(
                  icon: const Icon(Icons.delete),
                  iconSize: 20,
                  onPressed: () {
                    final String delBookTitle = bookmark.name;
                    ref
                        .read(bookMarkListProvider.notifier)
                        .deleteBookmark(selectedIndex);
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('「$delBookTitle」ブックマックを削除しました')));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
