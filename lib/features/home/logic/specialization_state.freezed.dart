// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'specialization_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SpecializationState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecializationState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SpecializationState()';
}


}

/// @nodoc
class $SpecializationStateCopyWith<$Res>  {
$SpecializationStateCopyWith(SpecializationState _, $Res Function(SpecializationState) __);
}


/// Adds pattern-matching-related methods to [SpecializationState].
extension SpecializationStatePatterns on SpecializationState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( SpecializationLoading value)?  loading,TResult Function( SpecializationSuccess value)?  success,TResult Function( SpecializationError value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SpecializationLoading() when loading != null:
return loading(_that);case SpecializationSuccess() when success != null:
return success(_that);case SpecializationError() when failure != null:
return failure(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( SpecializationLoading value)  loading,required TResult Function( SpecializationSuccess value)  success,required TResult Function( SpecializationError value)  failure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case SpecializationLoading():
return loading(_that);case SpecializationSuccess():
return success(_that);case SpecializationError():
return failure(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( SpecializationLoading value)?  loading,TResult? Function( SpecializationSuccess value)?  success,TResult? Function( SpecializationError value)?  failure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SpecializationLoading() when loading != null:
return loading(_that);case SpecializationSuccess() when success != null:
return success(_that);case SpecializationError() when failure != null:
return failure(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( SpecializationsResponseModel specializationsResponseModel)?  success,TResult Function( ErrorHandler error)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SpecializationLoading() when loading != null:
return loading();case SpecializationSuccess() when success != null:
return success(_that.specializationsResponseModel);case SpecializationError() when failure != null:
return failure(_that.error);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( SpecializationsResponseModel specializationsResponseModel)  success,required TResult Function( ErrorHandler error)  failure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case SpecializationLoading():
return loading();case SpecializationSuccess():
return success(_that.specializationsResponseModel);case SpecializationError():
return failure(_that.error);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( SpecializationsResponseModel specializationsResponseModel)?  success,TResult? Function( ErrorHandler error)?  failure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SpecializationLoading() when loading != null:
return loading();case SpecializationSuccess() when success != null:
return success(_that.specializationsResponseModel);case SpecializationError() when failure != null:
return failure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements SpecializationState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SpecializationState.initial()';
}


}




/// @nodoc


class SpecializationLoading implements SpecializationState {
  const SpecializationLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecializationLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SpecializationState.loading()';
}


}




/// @nodoc


class SpecializationSuccess implements SpecializationState {
  const SpecializationSuccess(this.specializationsResponseModel);
  

 final  SpecializationsResponseModel specializationsResponseModel;

/// Create a copy of SpecializationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpecializationSuccessCopyWith<SpecializationSuccess> get copyWith => _$SpecializationSuccessCopyWithImpl<SpecializationSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecializationSuccess&&(identical(other.specializationsResponseModel, specializationsResponseModel) || other.specializationsResponseModel == specializationsResponseModel));
}


@override
int get hashCode => Object.hash(runtimeType,specializationsResponseModel);

@override
String toString() {
  return 'SpecializationState.success(specializationsResponseModel: $specializationsResponseModel)';
}


}

/// @nodoc
abstract mixin class $SpecializationSuccessCopyWith<$Res> implements $SpecializationStateCopyWith<$Res> {
  factory $SpecializationSuccessCopyWith(SpecializationSuccess value, $Res Function(SpecializationSuccess) _then) = _$SpecializationSuccessCopyWithImpl;
@useResult
$Res call({
 SpecializationsResponseModel specializationsResponseModel
});




}
/// @nodoc
class _$SpecializationSuccessCopyWithImpl<$Res>
    implements $SpecializationSuccessCopyWith<$Res> {
  _$SpecializationSuccessCopyWithImpl(this._self, this._then);

  final SpecializationSuccess _self;
  final $Res Function(SpecializationSuccess) _then;

/// Create a copy of SpecializationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? specializationsResponseModel = null,}) {
  return _then(SpecializationSuccess(
null == specializationsResponseModel ? _self.specializationsResponseModel : specializationsResponseModel // ignore: cast_nullable_to_non_nullable
as SpecializationsResponseModel,
  ));
}


}

/// @nodoc


class SpecializationError implements SpecializationState {
  const SpecializationError({required this.error});
  

 final  ErrorHandler error;

/// Create a copy of SpecializationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpecializationErrorCopyWith<SpecializationError> get copyWith => _$SpecializationErrorCopyWithImpl<SpecializationError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecializationError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'SpecializationState.failure(error: $error)';
}


}

/// @nodoc
abstract mixin class $SpecializationErrorCopyWith<$Res> implements $SpecializationStateCopyWith<$Res> {
  factory $SpecializationErrorCopyWith(SpecializationError value, $Res Function(SpecializationError) _then) = _$SpecializationErrorCopyWithImpl;
@useResult
$Res call({
 ErrorHandler error
});




}
/// @nodoc
class _$SpecializationErrorCopyWithImpl<$Res>
    implements $SpecializationErrorCopyWith<$Res> {
  _$SpecializationErrorCopyWithImpl(this._self, this._then);

  final SpecializationError _self;
  final $Res Function(SpecializationError) _then;

/// Create a copy of SpecializationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(SpecializationError(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorHandler,
  ));
}


}

// dart format on
