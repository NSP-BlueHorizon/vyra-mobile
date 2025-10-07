import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    @JsonKey(name: 'user_id') required String userId,
    required String username,
    required String email,
    @JsonKey(name: 'full_name') required String fullName,
    @JsonKey(name: 'birth_date') required String birthDate,
    @JsonKey(name: 'signup_date') required String signupDate,
    @JsonKey(name: 'last_signin_date') required String lastSigninDate,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
