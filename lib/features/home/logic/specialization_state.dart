

import 'package:doctors/core/networking/api_error_handelar.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/models/specializations_response_model.dart';
part 'specialization_state.freezed.dart';
@Freezed()
class SpecializationState with _$SpecializationState {
    const factory SpecializationState.initial() = _Initial;
    const factory SpecializationState.loading() = SpecializationLoading;
    const factory SpecializationState.success(SpecializationsResponseModel specializationsResponseModel) = SpecializationSuccess;
    const factory SpecializationState.failure({required ErrorHandler error}) = SpecializationError;


}
