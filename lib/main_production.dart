import 'package:doctors/core/routing/app_routes.dart';
import 'package:doctors/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/di/dependency_injection.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
   await ScreenUtil.ensureScreenSize();
  setupGetIt();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.amber, // navigation bar color
    statusBarColor: Colors.pink, // status bar color
  ));
  runApp( DocDoc(
    appRoutes: AppRoutes(),
  ));
}


