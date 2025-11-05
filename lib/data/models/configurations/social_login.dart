import 'package:json_annotation/json_annotation.dart';

part 'social_login.g.dart';

@JsonSerializable()
class SocialLogin {
  @JsonKey(name: "login_medium")
  final String? loginMedium;
  @JsonKey(name: "status")
  final bool? status;

  SocialLogin({this.loginMedium, this.status});

  SocialLogin copyWith({String? loginMedium, bool? status}) => SocialLogin(
    loginMedium: loginMedium ?? this.loginMedium,
    status: status ?? this.status,
  );

  factory SocialLogin.fromJson(Map<String, dynamic> json) =>
      _$SocialLoginFromJson(json);

  Map<String, dynamic> toJson() => _$SocialLoginToJson(this);
}
