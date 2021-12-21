import 'package:bookmarksbywang/pages/bookmarks_page.dart';
import 'package:bookmarksbywang/pages/createbookmark_page.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

var rootHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return BookmarksPage();
});

var createHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return CreateBookmarkPage();
});
