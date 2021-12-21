// ignore_for_file: use_key_in_widget_constructors, file_names

import 'package:bookmarksbywang/component/bookmarksItem_component.dart';
import 'package:bookmarksbywang/model/bookmark.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BookmarkslistComponent extends ConsumerWidget {
  final List<Bookmark> bookmarksList;

  const BookmarkslistComponent(this.bookmarksList);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.builder(
        itemCount: bookmarksList.length,
        itemBuilder: (context, index) {
          return BookmarksitemComponent(bookmarksList[index], index);
        });
  }
}
