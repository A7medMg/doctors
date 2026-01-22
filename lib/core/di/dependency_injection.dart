import 'package:dio/dio.dart';
import 'package:doctors/core/networking/api_services.dart';
import 'package:doctors/features/login/data/repos/login_repo.dart';
import 'package:doctors/features/login/logic/login_cubit.dart';
import 'package:get_it/get_it.dart';

import '../networking/dio_factory.dart';

final GetIt getIt = GetIt.instance;
Future<void>setupGetIt()async{
  //dio and api services
Dio dio=DioFactory.getDio();
getIt.registerLazySingleton<ApiServices>(()=>ApiServices(dio));
 // login
getIt.registerLazySingleton<LoginRepo>(()=>LoginRepo(getIt.get()));
getIt.registerLazySingleton<LoginCubit>(()=>LoginCubit(getIt.get()));



}