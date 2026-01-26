import 'package:doctors/core/networking/api_error_handelar.dart';
import 'package:doctors/core/networking/api_result.dart';
import 'package:doctors/features/home/data/api/home_api_services.dart';
import 'package:doctors/features/home/data/models/specializations_response_model.dart';

class HomeRepo {
  final HomeApiServices _homeApiServices;
  HomeRepo(this._homeApiServices);
  Future<ApiResult<SpecializationsResponseModel>> getSpecialization() async {
try {
      final response = await _homeApiServices.getHomeData();
      return ApiResult.success(response);
  }catch(error){
    return ApiResult.failure(ErrorHandler.handle(error));
  }
    

}
}