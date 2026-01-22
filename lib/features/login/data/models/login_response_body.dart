import 'package:json_annotation/json_annotation.dart';
part 'login_response_body.g.dart';
@JsonSerializable()
class LoginResponseBody {
   String? message;
   int? code;
   bool? status;
  @JsonKey(name: "data")
   UserData ?userData;
  LoginResponseBody({this.message, this.code, this.status, this.userData});
  factory LoginResponseBody.fromJson(Map<String, dynamic> json) => _$LoginResponseBodyFromJson(json);
}
@JsonSerializable()
class UserData{
   String? token;
  @JsonKey(name: "username")
   String? userName;
  UserData({this.token,this.userName});
  factory UserData.fromJson(Map<String, dynamic> json) => _$UserDataFromJson(json);

}