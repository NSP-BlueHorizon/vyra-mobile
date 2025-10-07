// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      userId: json['user_id'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      fullName: json['full_name'] as String,
      birthDate: json['birth_date'] as String,
      signupDate: json['signup_date'] as String,
      lastSigninDate: json['last_signin_date'] as String,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'username': instance.username,
      'email': instance.email,
      'full_name': instance.fullName,
      'birth_date': instance.birthDate,
      'signup_date': instance.signupDate,
      'last_signin_date': instance.lastSigninDate,
    };
