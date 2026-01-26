import 'package:bloc/bloc.dart';
import 'package:doctors/core/networking/api_result.dart';

import 'package:doctors/features/home/data/repos/home_repo.dart';
import 'package:doctors/features/home/logic/specialization_state.dart';



class SpecializationCubit extends Cubit<SpecializationState> {
  SpecializationCubit(this._homeRepo) : super(SpecializationState.initial());
  final HomeRepo _homeRepo;
  Future<void> getSpecialization() async {
    emit(const SpecializationState.loading());
    var response = await _homeRepo.getSpecialization();
    response.when(success: (data) {
      emit(SpecializationState.success());
    }, failure: (error) {
      emit(SpecializationState.failure(
          error: error.apiErrorModel.message ?? "Something went wrong"));
    });



  
}
}