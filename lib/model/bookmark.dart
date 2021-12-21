import 'package:freezed_annotation/freezed_annotation.dart';

part 'bookmark.freezed.dart';

@freezed
class Bookmark with _$Bookmark {
  const factory Bookmark(String name, String url) = _Bookmark;
}
