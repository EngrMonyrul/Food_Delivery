import 'package:json_annotation/json_annotation.dart';

part 'apple_login.g.dart';

@JsonSerializable()
class AppleLogin {
  @JsonKey(name: "login_medium")
  final String? loginMedium;
  @JsonKey(name: "status")
  final bool? status;
  @JsonKey(name: "client_id")
  final String? clientId;

  AppleLogin({this.loginMedium, this.status, this.clientId});

  AppleLogin copyWith({String? loginMedium, bool? status, String? clientId}) =>
      AppleLogin(
        loginMedium: loginMedium ?? this.loginMedium,
        status: status ?? this.status,
        clientId: clientId ?? this.clientId,
      );

  factory AppleLogin.fromJson(Map<String, dynamic> json) =>
      _$AppleLoginFromJson(json);

  Map<String, dynamic> toJson() => _$AppleLoginToJson(this);
}
