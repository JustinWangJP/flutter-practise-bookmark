import 'package:bookmarksbywang/Notifier/bookmark_notifier.dart';
import 'package:bookmarksbywang/model/bookmark.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final bookMarkListProvider =
    StateNotifierProvider<BookmarkNotifier, List<Bookmark>>((ref) {
  return BookmarkNotifier([]);
});
