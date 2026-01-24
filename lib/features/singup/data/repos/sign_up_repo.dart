import 'package:doctors/features/singup/data/models/singup_response_body.dart';

import '../../../../core/networking/api_error_handelar.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_services.dart';
import '../models/sing_up_request_body.dart';

class SignUpRepo {
  final ApiServices _apiServices;
  SignUpRepo(this._apiServices);
  Future<ApiResult<SignupResponse>>signUp(SignupRequestBody signupRequestBody) async{
    try{

      var response= await _apiServices.register(signupRequestBody);
      return ApiResult.success(response);
    }catch(e){

      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}