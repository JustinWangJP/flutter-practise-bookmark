// ignore_for_file: file_names

import 'package:bookmarksbywang/model/bookmark.dart';
import 'package:bookmarksbywang/provider/bookmark_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BookmarksitemComponent extends ConsumerWidget {
  final Bookmark bookmark;
  final int selectedIndex;
  const BookmarksitemComponent(this.bookmark, this.selectedIndex);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: InkWell(
        onTap: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(bookmark.name,
                    style: Theme.of(context).textTheme.headline6),
                const SizedBox(height: 6),
                Text(bookmark.url,
                    style: Theme.of(context).textTheme.subtitle1),
              ],
            ),
            IconButton(
              icon: const Icon(Icons.delete),
              iconSize: 20,
              onPressed: () {
                final String delBookTitle = bookmark.name;
                ref
                    .read(bookMarkListProvider.notifier)
                    .deleteBookmark(selectedIndex);
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('「$delBookTitle」ブックマックを削除しました')));
              },
            ),
            // Hero(tag: bookmark.url, child: const Icon(Icons.delete, size: 20))
          ],
        ),
      ),
    );
  }
}
