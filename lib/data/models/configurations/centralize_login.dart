import 'package:json_annotation/json_annotation.dart';

part 'centralize_login.g.dart';

@JsonSerializable()
class CentralizeLogin {
  @JsonKey(name: "manual_login_status")
  final int? manualLoginStatus;
  @JsonKey(name: "otp_login_status")
  final int? otpLoginStatus;
  @JsonKey(name: "social_login_status")
  final int? socialLoginStatus;
  @JsonKey(name: "google_login_status")
  final int? googleLoginStatus;
  @JsonKey(name: "facebook_login_status")
  final int? facebookLoginStatus;
  @JsonKey(name: "apple_login_status")
  final int? appleLoginStatus;
  @JsonKey(name: "email_verification_status")
  final int? emailVerificationStatus;
  @JsonKey(name: "phone_verification_status")
  final int? phoneVerificationStatus;

  CentralizeLogin({
    this.manualLoginStatus,
    this.otpLoginStatus,
    this.socialLoginStatus,
    this.googleLoginStatus,
    this.facebookLoginStatus,
    this.appleLoginStatus,
    this.emailVerificationStatus,
    this.phoneVerificationStatus,
  });

  CentralizeLogin copyWith({
    int? manualLoginStatus,
    int? otpLoginStatus,
    int? socialLoginStatus,
    int? googleLoginStatus,
    int? facebookLoginStatus,
    int? appleLoginStatus,
    int? emailVerificationStatus,
    int? phoneVerificationStatus,
  }) => CentralizeLogin(
    manualLoginStatus: manualLoginStatus ?? this.manualLoginStatus,
    otpLoginStatus: otpLoginStatus ?? this.otpLoginStatus,
    socialLoginStatus: socialLoginStatus ?? this.socialLoginStatus,
    googleLoginStatus: googleLoginStatus ?? this.googleLoginStatus,
    facebookLoginStatus: facebookLoginStatus ?? this.facebookLoginStatus,
    appleLoginStatus: appleLoginStatus ?? this.appleLoginStatus,
    emailVerificationStatus:
        emailVerificationStatus ?? this.emailVerificationStatus,
    phoneVerificationStatus:
        phoneVerificationStatus ?? this.phoneVerificationStatus,
  );

  factory CentralizeLogin.fromJson(Map<String, dynamic> json) =>
      _$CentralizeLoginFromJson(json);

  Map<String, dynamic> toJson() => _$CentralizeLoginToJson(this);
}
