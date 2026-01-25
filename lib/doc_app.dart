
import 'package:doctors/core/routing/app_routes.dart';
import 'package:doctors/core/routing/routes.dart';
import 'package:doctors/core/theming/colors.dart';
import 'package:doctors/features/home/ui/home_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocDoc extends StatelessWidget {
  final AppRoutes appRoutes;
  const DocDoc({super.key, required this.appRoutes});

  @override
  Widget build(BuildContext context) {
   return ScreenUtilInit(
    designSize: const Size(375, 812),
    minTextAdapt: true,

    builder: (context, child) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: ColorsManager.primaryColor,
          scaffoldBackgroundColor: Colors.white
        ),
        home: HomeScreen(),
       // onGenerateRoute: appRoutes.generateRoute,
       // initialRoute: Routes.onBoardingScreen,
       
      );
    },

   );
  }
}