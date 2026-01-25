import 'package:doctors/core/routing/app_routes.dart';
import 'package:doctors/doc_app.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/di/dependency_injection.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  

  setupGetIt();
  runApp( DocDoc(
    appRoutes: AppRoutes(),
  ));
}


