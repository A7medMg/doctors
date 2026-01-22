import 'package:doctors/core/routing/routes.dart';
import 'package:doctors/features/login/ui/screens/login_screen.dart';
import 'package:doctors/features/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/login/logic/login_cubit.dart';
import '../di/dependency_injection.dart';

class AppRoutes {
  Route generateRoute(RouteSettings settings) {
    // ignore: unused_local_variable
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.onBoardingScreen:
      return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.loginScreen:
      return MaterialPageRoute(builder: (_) =>
      BlocProvider(
        create: (context) => getIt<LoginCubit>(),
        child: const LoginScreen(),
        ));

      case Routes.homeScreen:
      return MaterialPageRoute(builder: (_) => const Placeholder());
      default:
      return MaterialPageRoute(builder: (_) => Scaffold(
        body: Center(
          child: Text("no route found for ${settings.name}"),
        ),
      ));
    

    }
  }
}