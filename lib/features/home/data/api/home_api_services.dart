import 'package:dio/dio.dart';
import 'package:doctors/core/networking/api_constants.dart';
import 'package:doctors/features/home/data/api/home_api_constants.dart';
import 'package:doctors/features/home/data/models/specializations_response_model.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part 'home_api_services.g.dart';
@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class HomeApiServices {
  factory HomeApiServices(Dio dio) = _HomeApiServices;
  @GET(HomeApiConstants.homeSpecailties)
  Future<SpecializationsResponseModel>getHomeData();




  
}