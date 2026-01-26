import 'package:dio/dio.dart';
import 'package:doctors/core/networking/api_constants.dart';
import 'package:doctors/features/home/data/api/home_api_constants.dart';
import 'package:doctors/features/home/data/models/specializations_response_model.dart';
import 'package:retrofit/http.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class HomeApiServices {
  factory HomeApiServices(Dio dio) = _HomeApiServices;
  @GET(HomeApiConstants.homeSpecailties)
  Future<SpecializationsResponseModel>getHomeData();




  
}