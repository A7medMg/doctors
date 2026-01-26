

import 'package:freezed_annotation/freezed_annotation.dart';
part 'specicalization_state.freezed.dart';
@Freezed()
class SpecializationState<T> with _$SpecializationState<T> {
    const factory SpecializationState.initial() = _Initial;
    const factory SpecializationState.loading() = SpecializationLoading;
    const factory SpecializationState.success() = SpecializationSuccess;
    const factory SpecializationState.failure({required String error}) = SpecializationError;


}
