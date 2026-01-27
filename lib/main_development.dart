import 'package:doctors/core/helpers/extensions.dart';
import 'package:doctors/core/helpers/shared_pref_constans.dart';
import 'package:doctors/core/helpers/shared_pref_helper.dart';
import 'package:doctors/core/routing/app_routes.dart';
import 'package:doctors/doc_app.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/di/dependency_injection.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
   await ScreenUtil.ensureScreenSize();
   await checkIfUserIsLoggedIn();
  setupGetIt();
 
  runApp( DocDoc(
    appRoutes: AppRoutes(),
  ));
}
checkIfUserIsLoggedIn()async{
  String ? userToken=await SharedPrefHelper.getString(SharedPrefConstans.saveToken);
  if(userToken.isNullOrEmpty()){
    isLogin=false;
  }else{
    isLogin=true;
  }

}

