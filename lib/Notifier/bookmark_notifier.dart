import 'package:bookmarksbywang/config/application.dart';
import 'package:bookmarksbywang/model/bookmark.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BookmarkNotifier extends StateNotifier<List<Bookmark>> {
  BookmarkNotifier(List<Bookmark>? initalBookMarks)
      : super(initalBookMarks ?? []);

  void addNewBookmark(String title, String url) {
    state = [...state, Bookmark(title, url)];
  }

  List<Bookmark> getBookmarks() {
    return state;
  }

  void deleteBookmark(int index) {
    state.removeAt(index);
  }
}
