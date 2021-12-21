import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import './route_handlers.dart';

class Routes {
  static String root = "/";
  static String createBookmark = '/create';
  static String detailOfBookmark = '/detail';

  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      return;
    });
    router.define(root, handler: rootHandler);

    router.define(createBookmark, handler: createHandler);
  }
}
