import 'package:dio/dio.dart';
import 'package:doctors/features/login/data/models/login_request_body.dart';
import 'package:doctors/features/login/data/models/login_response_body.dart';
import 'package:doctors/features/singup/data/models/singup_response_body.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../../features/singup/data/models/sing_up_request_body.dart';
import 'api_constants.dart';
part"api_services.g.dart";
@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiServices {
  factory ApiServices(Dio dio,{String baseUrl}) = _ApiServices;
  @POST(ApiConstants.login)
  Future<LoginResponseBody> login(
      @Body() LoginRequestBody loginRequestBody,
      );
  @POST(ApiConstants.signup)
  Future<SignupResponse> register(
      @Body() SignupRequestBody signupRequestBody,
      );



}