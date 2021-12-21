import 'package:bookmarksbywang/component/bookmarkGridItem_component.dart';
import 'package:bookmarksbywang/model/bookmark.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BookmarksGridComponent extends ConsumerWidget {
  final List<Bookmark> bookmarksList;

  BookmarksGridComponent(this.bookmarksList);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: GridView.builder(
        itemCount: bookmarksList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 1.5, crossAxisCount: 2, crossAxisSpacing: 6),
        itemBuilder: (BuildContext context, int index) {
          return BookmarkGridItemCompoent(bookmarksList[index], index);
        },
      ),
    );
  }
}
