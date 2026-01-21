import 'package:doctors/core/routing/app_routes.dart';
import 'package:doctors/doc_app.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp( DocDoc(
    appRoutes: AppRoutes(),
  ));
}


