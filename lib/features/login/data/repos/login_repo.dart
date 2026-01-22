import 'package:doctors/core/networking/api_result.dart';
import 'package:doctors/core/networking/api_services.dart';
import 'package:doctors/features/login/data/models/login_request_body.dart';
import 'package:doctors/features/login/data/models/login_response_body.dart';

import '../../../../core/networking/api_error_handelar.dart';

class LoginRepo {
 final ApiServices _apiServices;
  LoginRepo(this._apiServices);
  Future<ApiResult<LoginResponseBody>>login(LoginRequestBody loginRequestBody) async{
   try{

     var response= await _apiServices.login(loginRequestBody);
     return ApiResult.success(response);
   }catch(e){

     return ApiResult.failure(ErrorHandler.handle(e));
   }
  }
}


