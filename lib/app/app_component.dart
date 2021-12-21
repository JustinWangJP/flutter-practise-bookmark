import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import '../../config/application.dart';
import '../../config/routes.dart';

class AppComponent extends StatelessWidget {
  AppComponent() {
    final router = FluroRouter();
    Routes.configureRoutes(router);
    Application.router = router;
  }

  @override
  Widget build(BuildContext context) {
    final app = MaterialApp(
      title: 'BookMarks writter by Wang',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: Application.router.generator,
    );
    return app;
  }
}
