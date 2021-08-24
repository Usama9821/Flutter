part of 'sign_in_http.dart';

FormData _$FormDataFromJson(Map<String, dynamic> json) {
  return FormData(
    email: json['email'] as String,
    password: json['password'] as String,
  );
}

Map<String, dynamic> _$FormDataToJson(FormData instance) => <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
