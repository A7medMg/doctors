import 'package:dio/dio.dart';
import 'package:doctors/core/networking/api_services.dart';
import 'package:doctors/features/home/data/api/home_api_services.dart';
import 'package:doctors/features/home/data/repos/home_repo.dart';
import 'package:doctors/features/login/data/repos/login_repo.dart';
import 'package:doctors/features/login/logic/login_cubit.dart';
import 'package:get_it/get_it.dart';

import '../../features/singup/data/repos/sign_up_repo.dart';
import '../../features/singup/logic/sign_up_cubit.dart';
import '../networking/dio_factory.dart';

final GetIt getIt = GetIt.instance;
Future<void>setupGetIt()async{
  //dio and api services
Dio dio=DioFactory.getDio();
getIt.registerLazySingleton<ApiServices>(()=>ApiServices(dio));
 // login
getIt.registerLazySingleton<LoginRepo>(()=>LoginRepo(getIt.get()));
getIt.registerLazySingleton<LoginCubit>(()=>LoginCubit(getIt.get()));
//signUp
  getIt.registerLazySingleton<SignUpRepo>(()=>SignUpRepo(getIt.get()));
  getIt.registerLazySingleton<SignUpCubit>(()=>SignUpCubit(getIt.get()));
  getIt.registerLazySingleton<HomeApiServices>(()=>HomeApiServices(dio));
  getIt.registerLazySingleton<HomeRepo>(()=>HomeRepo(getIt.get()));


}