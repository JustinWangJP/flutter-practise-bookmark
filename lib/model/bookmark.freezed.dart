// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bookmark.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BookmarkTearOff {
  const _$BookmarkTearOff();

  _Bookmark call(String name, String url) {
    return _Bookmark(
      name,
      url,
    );
  }
}

/// @nodoc
const $Bookmark = _$BookmarkTearOff();

/// @nodoc
mixin _$Bookmark {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookmarkCopyWith<Bookmark> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkCopyWith<$Res> {
  factory $BookmarkCopyWith(Bookmark value, $Res Function(Bookmark) then) =
      _$BookmarkCopyWithImpl<$Res>;
  $Res call({String name, String url});
}

/// @nodoc
class _$BookmarkCopyWithImpl<$Res> implements $BookmarkCopyWith<$Res> {
  _$BookmarkCopyWithImpl(this._value, this._then);

  final Bookmark _value;
  // ignore: unused_field
  final $Res Function(Bookmark) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$BookmarkCopyWith<$Res> implements $BookmarkCopyWith<$Res> {
  factory _$BookmarkCopyWith(_Bookmark value, $Res Function(_Bookmark) then) =
      __$BookmarkCopyWithImpl<$Res>;
  @override
  $Res call({String name, String url});
}

/// @nodoc
class __$BookmarkCopyWithImpl<$Res> extends _$BookmarkCopyWithImpl<$Res>
    implements _$BookmarkCopyWith<$Res> {
  __$BookmarkCopyWithImpl(_Bookmark _value, $Res Function(_Bookmark) _then)
      : super(_value, (v) => _then(v as _Bookmark));

  @override
  _Bookmark get _value => super._value as _Bookmark;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_Bookmark(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Bookmark implements _Bookmark {
  const _$_Bookmark(this.name, this.url);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'Bookmark(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Bookmark &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  _$BookmarkCopyWith<_Bookmark> get copyWith =>
      __$BookmarkCopyWithImpl<_Bookmark>(this, _$identity);
}

abstract class _Bookmark implements Bookmark {
  const factory _Bookmark(String name, String url) = _$_Bookmark;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$BookmarkCopyWith<_Bookmark> get copyWith =>
      throw _privateConstructorUsedError;
}
