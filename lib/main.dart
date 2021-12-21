import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app/app_component.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ProviderScope(child: AppComponent()));
}
