import 'package:doctors/core/routing/app_routes.dart';
import 'package:doctors/doc_app.dart';
import 'package:flutter/material.dart';

import 'core/di/dependency_injection.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  runApp( DocDoc(
    appRoutes: AppRoutes(),
  ));
}


