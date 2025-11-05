import 'package:food_resturant_app/data/models/configurations/social_login.dart';
import 'package:food_resturant_app/data/models/configurations/social_media.dart';
import 'package:json_annotation/json_annotation.dart';
import 'active_payment_method_list.dart';
import 'additional_join_us_page_data.dart';
import 'admin_free_delivery.dart';
import 'apple_login.dart';
import 'banner_data.dart';
import 'business_plan.dart';
import 'centralize_login.dart';
import 'default_location.dart';
import 'digital_payment_info.dart';
import 'language.dart';

part 'configuration_model.g.dart';

@JsonSerializable()
class Configuration {
  @JsonKey(name: "business_name")
  final String? businessName;
  @JsonKey(name: "logo")
  final String? logo;
  @JsonKey(name: "logo_full_url")
  final String? logoFullUrl;
  @JsonKey(name: "address")
  final String? address;
  @JsonKey(name: "phone")
  final String? phone;
  @JsonKey(name: "email")
  final String? email;
  @JsonKey(name: "country")
  final String? country;
  @JsonKey(name: "default_location")
  final DefaultLocation? defaultLocation;
  @JsonKey(name: "currency_symbol")
  final String? currencySymbol;
  @JsonKey(name: "currency_symbol_direction")
  final String? currencySymbolDirection;
  @JsonKey(name: "app_minimum_version_android")
  final int? appMinimumVersionAndroid;
  @JsonKey(name: "app_url_android")
  final dynamic appUrlAndroid;
  @JsonKey(name: "app_minimum_version_ios")
  final int? appMinimumVersionIos;
  @JsonKey(name: "app_url_ios")
  final dynamic appUrlIos;
  @JsonKey(name: "customer_verification")
  final bool? customerVerification;
  @JsonKey(name: "schedule_order")
  final bool? scheduleOrder;
  @JsonKey(name: "order_delivery_verification")
  final bool? orderDeliveryVerification;
  @JsonKey(name: "cash_on_delivery")
  final bool? cashOnDelivery;
  @JsonKey(name: "digital_payment")
  final bool? digitalPayment;
  @JsonKey(name: "demo")
  final bool? demo;
  @JsonKey(name: "maintenance_mode")
  final bool? maintenanceMode;
  @JsonKey(name: "order_confirmation_model")
  final String? orderConfirmationModel;
  @JsonKey(name: "popular_food")
  final int? popularFood;
  @JsonKey(name: "popular_restaurant")
  final int? popularRestaurant;
  @JsonKey(name: "new_restaurant")
  final int? newRestaurant;
  @JsonKey(name: "most_reviewed_foods")
  final int? mostReviewedFoods;
  @JsonKey(name: "show_dm_earning")
  final bool? showDmEarning;
  @JsonKey(name: "canceled_by_deliveryman")
  final bool? canceledByDeliveryman;
  @JsonKey(name: "canceled_by_restaurant")
  final bool? canceledByRestaurant;
  @JsonKey(name: "timeformat")
  final String? timeformat;
  @JsonKey(name: "language")
  final List<Language>? language;
  @JsonKey(name: "toggle_veg_non_veg")
  final bool? toggleVegNonVeg;
  @JsonKey(name: "toggle_dm_registration")
  final bool? toggleDmRegistration;
  @JsonKey(name: "toggle_restaurant_registration")
  final bool? toggleRestaurantRegistration;
  @JsonKey(name: "schedule_order_slot_duration")
  final int? scheduleOrderSlotDuration;
  @JsonKey(name: "digit_after_decimal_point")
  final int? digitAfterDecimalPoint;
  @JsonKey(name: "loyalty_point_exchange_rate")
  final int? loyaltyPointExchangeRate;
  @JsonKey(name: "loyalty_point_item_purchase_point")
  final int? loyaltyPointItemPurchasePoint;
  @JsonKey(name: "loyalty_point_status")
  final int? loyaltyPointStatus;
  @JsonKey(name: "minimum_point_to_transfer")
  final int? minimumPointToTransfer;
  @JsonKey(name: "customer_wallet_status")
  final int? customerWalletStatus;
  @JsonKey(name: "ref_earning_status")
  final int? refEarningStatus;
  @JsonKey(name: "ref_earning_exchange_rate")
  final int? refEarningExchangeRate;
  @JsonKey(name: "dm_tips_status")
  final int? dmTipsStatus;
  @JsonKey(name: "theme")
  final int? theme;
  @JsonKey(name: "social_media")
  final List<SocialMedia>? socialMedia;
  @JsonKey(name: "social_login")
  final List<SocialLogin>? socialLogin;
  @JsonKey(name: "business_plan")
  final BusinessPlan? businessPlan;
  @JsonKey(name: "admin_commission")
  final int? adminCommission;
  @JsonKey(name: "footer_text")
  final String? footerText;
  @JsonKey(name: "fav_icon")
  final String? favIcon;
  @JsonKey(name: "fav_icon_full_url")
  final String? favIconFullUrl;
  @JsonKey(name: "refund_active_status")
  final bool? refundActiveStatus;
  @JsonKey(name: "free_trial_period_status")
  final int? freeTrialPeriodStatus;
  @JsonKey(name: "free_trial_period_data")
  final int? freeTrialPeriodData;
  @JsonKey(name: "app_minimum_version_android_restaurant")
  final int? appMinimumVersionAndroidRestaurant;
  @JsonKey(name: "app_url_android_restaurant")
  final dynamic appUrlAndroidRestaurant;
  @JsonKey(name: "app_minimum_version_ios_restaurant")
  final int? appMinimumVersionIosRestaurant;
  @JsonKey(name: "app_url_ios_restaurant")
  final dynamic appUrlIosRestaurant;
  @JsonKey(name: "app_minimum_version_android_deliveryman")
  final int? appMinimumVersionAndroidDeliveryman;
  @JsonKey(name: "app_url_android_deliveryman")
  final dynamic appUrlAndroidDeliveryman;
  @JsonKey(name: "app_minimum_version_ios_deliveryman")
  final dynamic appMinimumVersionIosDeliveryman;
  @JsonKey(name: "app_url_ios_deliveryman")
  final dynamic appUrlIosDeliveryman;
  @JsonKey(name: "apple_login")
  final List<AppleLogin>? appleLogin;
  @JsonKey(name: "order_subscription")
  final int? orderSubscription;
  @JsonKey(name: "cookies_text")
  final String? cookiesText;
  @JsonKey(name: "refund_policy_status")
  final int? refundPolicyStatus;
  @JsonKey(name: "cancellation_policy_status")
  final int? cancellationPolicyStatus;
  @JsonKey(name: "shipping_policy_status")
  final int? shippingPolicyStatus;
  @JsonKey(name: "refund_policy_data")
  final String? refundPolicyData;
  @JsonKey(name: "cancellation_policy_data")
  final String? cancellationPolicyData;
  @JsonKey(name: "shipping_policy_data")
  final String? shippingPolicyData;
  @JsonKey(name: "terms_and_conditions")
  final String? termsAndConditions;
  @JsonKey(name: "privacy_policy")
  final String? privacyPolicy;
  @JsonKey(name: "about_us")
  final String? aboutUs;
  @JsonKey(name: "take_away")
  final bool? takeAway;
  @JsonKey(name: "repeat_order_option")
  final bool? repeatOrderOption;
  @JsonKey(name: "home_delivery")
  final bool? homeDelivery;
  @JsonKey(name: "active_payment_method_list")
  final List<ActivePaymentMethodList>? activePaymentMethodList;
  @JsonKey(name: "add_fund_status")
  final int? addFundStatus;
  @JsonKey(name: "partial_payment_status")
  final int? partialPaymentStatus;
  @JsonKey(name: "partial_payment_method")
  final String? partialPaymentMethod;
  @JsonKey(name: "additional_charge_status")
  final int? additionalChargeStatus;
  @JsonKey(name: "additional_charge_name")
  final String? additionalChargeName;
  @JsonKey(name: "additional_charge")
  final int? additionalCharge;
  @JsonKey(name: "dm_picture_upload_status")
  final int? dmPictureUploadStatus;
  @JsonKey(name: "digital_payment_info")
  final DigitalPaymentInfo? digitalPaymentInfo;
  @JsonKey(name: "banner_data")
  final BannerData? bannerData;
  @JsonKey(name: "offline_payment_status")
  final int? offlinePaymentStatus;
  @JsonKey(name: "guest_checkout_status")
  final int? guestCheckoutStatus;
  @JsonKey(name: "country_picker_status")
  final int? countryPickerStatus;
  @JsonKey(name: "instant_order")
  final bool? instantOrder;
  @JsonKey(name: "extra_packaging_charge")
  final bool? extraPackagingCharge;
  @JsonKey(name: "customer_date_order_sratus")
  final bool? customerDateOrderSratus;
  @JsonKey(name: "customer_order_date")
  final int? customerOrderDate;
  @JsonKey(name: "deliveryman_additional_join_us_page_data")
  final AdditionalJoinUsPageData? deliverymanAdditionalJoinUsPageData;
  @JsonKey(name: "restaurant_additional_join_us_page_data")
  final AdditionalJoinUsPageData? restaurantAdditionalJoinUsPageData;
  @JsonKey(name: "disbursement_type")
  final String? disbursementType;
  @JsonKey(name: "restaurant_disbursement_waiting_time")
  final int? restaurantDisbursementWaitingTime;
  @JsonKey(name: "dm_disbursement_waiting_time")
  final int? dmDisbursementWaitingTime;
  @JsonKey(name: "min_amount_to_pay_restaurant")
  final int? minAmountToPayRestaurant;
  @JsonKey(name: "min_amount_to_pay_dm")
  final int? minAmountToPayDm;
  @JsonKey(name: "restaurant_review_reply")
  final bool? restaurantReviewReply;
  @JsonKey(name: "maintenance_mode_data")
  final dynamic maintenanceModeData;
  @JsonKey(name: "firebase_otp_verification")
  final int? firebaseOtpVerification;
  @JsonKey(name: "centralize_login")
  final CentralizeLogin? centralizeLogin;
  @JsonKey(name: "subscription_business_model")
  final int? subscriptionBusinessModel;
  @JsonKey(name: "commission_business_model")
  final int? commissionBusinessModel;
  @JsonKey(name: "subscription_deadline_warning_days")
  final int? subscriptionDeadlineWarningDays;
  @JsonKey(name: "subscription_deadline_warning_message")
  final String? subscriptionDeadlineWarningMessage;
  @JsonKey(name: "subscription_free_trial_days")
  final int? subscriptionFreeTrialDays;
  @JsonKey(name: "subscription_free_trial_type")
  final String? subscriptionFreeTrialType;
  @JsonKey(name: "subscription_free_trial_status")
  final int? subscriptionFreeTrialStatus;
  @JsonKey(name: "dine_in_order_option")
  final int? dineInOrderOption;
  @JsonKey(name: "admin_free_delivery")
  final AdminFreeDelivery? adminFreeDelivery;
  @JsonKey(name: "system_tax_type")
  final String? systemTaxType;
  @JsonKey(name: "system_tax_include_status")
  final int? systemTaxIncludeStatus;
  @JsonKey(name: "is_sms_active")
  final bool? isSmsActive;
  @JsonKey(name: "is_mail_active")
  final bool? isMailActive;

  Configuration({
    this.businessName,
    this.logo,
    this.logoFullUrl,
    this.address,
    this.phone,
    this.email,
    this.country,
    this.defaultLocation,
    this.currencySymbol,
    this.currencySymbolDirection,
    this.appMinimumVersionAndroid,
    this.appUrlAndroid,
    this.appMinimumVersionIos,
    this.appUrlIos,
    this.customerVerification,
    this.scheduleOrder,
    this.orderDeliveryVerification,
    this.cashOnDelivery,
    this.digitalPayment,
    this.demo,
    this.maintenanceMode,
    this.orderConfirmationModel,
    this.popularFood,
    this.popularRestaurant,
    this.newRestaurant,
    this.mostReviewedFoods,
    this.showDmEarning,
    this.canceledByDeliveryman,
    this.canceledByRestaurant,
    this.timeformat,
    this.language,
    this.toggleVegNonVeg,
    this.toggleDmRegistration,
    this.toggleRestaurantRegistration,
    this.scheduleOrderSlotDuration,
    this.digitAfterDecimalPoint,
    this.loyaltyPointExchangeRate,
    this.loyaltyPointItemPurchasePoint,
    this.loyaltyPointStatus,
    this.minimumPointToTransfer,
    this.customerWalletStatus,
    this.refEarningStatus,
    this.refEarningExchangeRate,
    this.dmTipsStatus,
    this.theme,
    this.socialMedia,
    this.socialLogin,
    this.businessPlan,
    this.adminCommission,
    this.footerText,
    this.favIcon,
    this.favIconFullUrl,
    this.refundActiveStatus,
    this.freeTrialPeriodStatus,
    this.freeTrialPeriodData,
    this.appMinimumVersionAndroidRestaurant,
    this.appUrlAndroidRestaurant,
    this.appMinimumVersionIosRestaurant,
    this.appUrlIosRestaurant,
    this.appMinimumVersionAndroidDeliveryman,
    this.appUrlAndroidDeliveryman,
    this.appMinimumVersionIosDeliveryman,
    this.appUrlIosDeliveryman,
    this.appleLogin,
    this.orderSubscription,
    this.cookiesText,
    this.refundPolicyStatus,
    this.cancellationPolicyStatus,
    this.shippingPolicyStatus,
    this.refundPolicyData,
    this.cancellationPolicyData,
    this.shippingPolicyData,
    this.termsAndConditions,
    this.privacyPolicy,
    this.aboutUs,
    this.takeAway,
    this.repeatOrderOption,
    this.homeDelivery,
    this.activePaymentMethodList,
    this.addFundStatus,
    this.partialPaymentStatus,
    this.partialPaymentMethod,
    this.additionalChargeStatus,
    this.additionalChargeName,
    this.additionalCharge,
    this.dmPictureUploadStatus,
    this.digitalPaymentInfo,
    this.bannerData,
    this.offlinePaymentStatus,
    this.guestCheckoutStatus,
    this.countryPickerStatus,
    this.instantOrder,
    this.extraPackagingCharge,
    this.customerDateOrderSratus,
    this.customerOrderDate,
    this.deliverymanAdditionalJoinUsPageData,
    this.restaurantAdditionalJoinUsPageData,
    this.disbursementType,
    this.restaurantDisbursementWaitingTime,
    this.dmDisbursementWaitingTime,
    this.minAmountToPayRestaurant,
    this.minAmountToPayDm,
    this.restaurantReviewReply,
    this.maintenanceModeData,
    this.firebaseOtpVerification,
    this.centralizeLogin,
    this.subscriptionBusinessModel,
    this.commissionBusinessModel,
    this.subscriptionDeadlineWarningDays,
    this.subscriptionDeadlineWarningMessage,
    this.subscriptionFreeTrialDays,
    this.subscriptionFreeTrialType,
    this.subscriptionFreeTrialStatus,
    this.dineInOrderOption,
    this.adminFreeDelivery,
    this.systemTaxType,
    this.systemTaxIncludeStatus,
    this.isSmsActive,
    this.isMailActive,
  });

  Configuration copyWith({
    String? businessName,
    String? logo,
    String? logoFullUrl,
    String? address,
    String? phone,
    String? email,
    String? country,
    DefaultLocation? defaultLocation,
    String? currencySymbol,
    String? currencySymbolDirection,
    int? appMinimumVersionAndroid,
    dynamic appUrlAndroid,
    int? appMinimumVersionIos,
    dynamic appUrlIos,
    bool? customerVerification,
    bool? scheduleOrder,
    bool? orderDeliveryVerification,
    bool? cashOnDelivery,
    bool? digitalPayment,
    bool? demo,
    bool? maintenanceMode,
    String? orderConfirmationModel,
    int? popularFood,
    int? popularRestaurant,
    int? newRestaurant,
    int? mostReviewedFoods,
    bool? showDmEarning,
    bool? canceledByDeliveryman,
    bool? canceledByRestaurant,
    String? timeformat,
    List<Language>? language,
    bool? toggleVegNonVeg,
    bool? toggleDmRegistration,
    bool? toggleRestaurantRegistration,
    int? scheduleOrderSlotDuration,
    int? digitAfterDecimalPoint,
    int? loyaltyPointExchangeRate,
    int? loyaltyPointItemPurchasePoint,
    int? loyaltyPointStatus,
    int? minimumPointToTransfer,
    int? customerWalletStatus,
    int? refEarningStatus,
    int? refEarningExchangeRate,
    int? dmTipsStatus,
    int? theme,
    List<SocialMedia>? socialMedia,
    List<SocialLogin>? socialLogin,
    BusinessPlan? businessPlan,
    int? adminCommission,
    String? footerText,
    String? favIcon,
    String? favIconFullUrl,
    bool? refundActiveStatus,
    int? freeTrialPeriodStatus,
    int? freeTrialPeriodData,
    int? appMinimumVersionAndroidRestaurant,
    dynamic appUrlAndroidRestaurant,
    int? appMinimumVersionIosRestaurant,
    dynamic appUrlIosRestaurant,
    int? appMinimumVersionAndroidDeliveryman,
    dynamic appUrlAndroidDeliveryman,
    dynamic appMinimumVersionIosDeliveryman,
    dynamic appUrlIosDeliveryman,
    List<AppleLogin>? appleLogin,
    int? orderSubscription,
    String? cookiesText,
    int? refundPolicyStatus,
    int? cancellationPolicyStatus,
    int? shippingPolicyStatus,
    String? refundPolicyData,
    String? cancellationPolicyData,
    String? shippingPolicyData,
    String? termsAndConditions,
    String? privacyPolicy,
    String? aboutUs,
    bool? takeAway,
    bool? repeatOrderOption,
    bool? homeDelivery,
    List<ActivePaymentMethodList>? activePaymentMethodList,
    int? addFundStatus,
    int? partialPaymentStatus,
    String? partialPaymentMethod,
    int? additionalChargeStatus,
    String? additionalChargeName,
    int? additionalCharge,
    int? dmPictureUploadStatus,
    DigitalPaymentInfo? digitalPaymentInfo,
    BannerData? bannerData,
    int? offlinePaymentStatus,
    int? guestCheckoutStatus,
    int? countryPickerStatus,
    bool? instantOrder,
    bool? extraPackagingCharge,
    bool? customerDateOrderSratus,
    int? customerOrderDate,
    AdditionalJoinUsPageData? deliverymanAdditionalJoinUsPageData,
    AdditionalJoinUsPageData? restaurantAdditionalJoinUsPageData,
    String? disbursementType,
    int? restaurantDisbursementWaitingTime,
    int? dmDisbursementWaitingTime,
    int? minAmountToPayRestaurant,
    int? minAmountToPayDm,
    bool? restaurantReviewReply,
    dynamic maintenanceModeData,
    int? firebaseOtpVerification,
    CentralizeLogin? centralizeLogin,
    int? subscriptionBusinessModel,
    int? commissionBusinessModel,
    int? subscriptionDeadlineWarningDays,
    String? subscriptionDeadlineWarningMessage,
    int? subscriptionFreeTrialDays,
    String? subscriptionFreeTrialType,
    int? subscriptionFreeTrialStatus,
    int? dineInOrderOption,
    AdminFreeDelivery? adminFreeDelivery,
    String? systemTaxType,
    int? systemTaxIncludeStatus,
    bool? isSmsActive,
    bool? isMailActive,
  }) => Configuration(
    businessName: businessName ?? this.businessName,
    logo: logo ?? this.logo,
    logoFullUrl: logoFullUrl ?? this.logoFullUrl,
    address: address ?? this.address,
    phone: phone ?? this.phone,
    email: email ?? this.email,
    country: country ?? this.country,
    defaultLocation: defaultLocation ?? this.defaultLocation,
    currencySymbol: currencySymbol ?? this.currencySymbol,
    currencySymbolDirection:
        currencySymbolDirection ?? this.currencySymbolDirection,
    appMinimumVersionAndroid:
        appMinimumVersionAndroid ?? this.appMinimumVersionAndroid,
    appUrlAndroid: appUrlAndroid ?? this.appUrlAndroid,
    appMinimumVersionIos: appMinimumVersionIos ?? this.appMinimumVersionIos,
    appUrlIos: appUrlIos ?? this.appUrlIos,
    customerVerification: customerVerification ?? this.customerVerification,
    scheduleOrder: scheduleOrder ?? this.scheduleOrder,
    orderDeliveryVerification:
        orderDeliveryVerification ?? this.orderDeliveryVerification,
    cashOnDelivery: cashOnDelivery ?? this.cashOnDelivery,
    digitalPayment: digitalPayment ?? this.digitalPayment,
    demo: demo ?? this.demo,
    maintenanceMode: maintenanceMode ?? this.maintenanceMode,
    orderConfirmationModel:
        orderConfirmationModel ?? this.orderConfirmationModel,
    popularFood: popularFood ?? this.popularFood,
    popularRestaurant: popularRestaurant ?? this.popularRestaurant,
    newRestaurant: newRestaurant ?? this.newRestaurant,
    mostReviewedFoods: mostReviewedFoods ?? this.mostReviewedFoods,
    showDmEarning: showDmEarning ?? this.showDmEarning,
    canceledByDeliveryman: canceledByDeliveryman ?? this.canceledByDeliveryman,
    canceledByRestaurant: canceledByRestaurant ?? this.canceledByRestaurant,
    timeformat: timeformat ?? this.timeformat,
    language: language ?? this.language,
    toggleVegNonVeg: toggleVegNonVeg ?? this.toggleVegNonVeg,
    toggleDmRegistration: toggleDmRegistration ?? this.toggleDmRegistration,
    toggleRestaurantRegistration:
        toggleRestaurantRegistration ?? this.toggleRestaurantRegistration,
    scheduleOrderSlotDuration:
        scheduleOrderSlotDuration ?? this.scheduleOrderSlotDuration,
    digitAfterDecimalPoint:
        digitAfterDecimalPoint ?? this.digitAfterDecimalPoint,
    loyaltyPointExchangeRate:
        loyaltyPointExchangeRate ?? this.loyaltyPointExchangeRate,
    loyaltyPointItemPurchasePoint:
        loyaltyPointItemPurchasePoint ?? this.loyaltyPointItemPurchasePoint,
    loyaltyPointStatus: loyaltyPointStatus ?? this.loyaltyPointStatus,
    minimumPointToTransfer:
        minimumPointToTransfer ?? this.minimumPointToTransfer,
    customerWalletStatus: customerWalletStatus ?? this.customerWalletStatus,
    refEarningStatus: refEarningStatus ?? this.refEarningStatus,
    refEarningExchangeRate:
        refEarningExchangeRate ?? this.refEarningExchangeRate,
    dmTipsStatus: dmTipsStatus ?? this.dmTipsStatus,
    theme: theme ?? this.theme,
    socialMedia: socialMedia ?? this.socialMedia,
    socialLogin: socialLogin ?? this.socialLogin,
    businessPlan: businessPlan ?? this.businessPlan,
    adminCommission: adminCommission ?? this.adminCommission,
    footerText: footerText ?? this.footerText,
    favIcon: favIcon ?? this.favIcon,
    favIconFullUrl: favIconFullUrl ?? this.favIconFullUrl,
    refundActiveStatus: refundActiveStatus ?? this.refundActiveStatus,
    freeTrialPeriodStatus: freeTrialPeriodStatus ?? this.freeTrialPeriodStatus,
    freeTrialPeriodData: freeTrialPeriodData ?? this.freeTrialPeriodData,
    appMinimumVersionAndroidRestaurant:
        appMinimumVersionAndroidRestaurant ??
        this.appMinimumVersionAndroidRestaurant,
    appUrlAndroidRestaurant:
        appUrlAndroidRestaurant ?? this.appUrlAndroidRestaurant,
    appMinimumVersionIosRestaurant:
        appMinimumVersionIosRestaurant ?? this.appMinimumVersionIosRestaurant,
    appUrlIosRestaurant: appUrlIosRestaurant ?? this.appUrlIosRestaurant,
    appMinimumVersionAndroidDeliveryman:
        appMinimumVersionAndroidDeliveryman ??
        this.appMinimumVersionAndroidDeliveryman,
    appUrlAndroidDeliveryman:
        appUrlAndroidDeliveryman ?? this.appUrlAndroidDeliveryman,
    appMinimumVersionIosDeliveryman:
        appMinimumVersionIosDeliveryman ?? this.appMinimumVersionIosDeliveryman,
    appUrlIosDeliveryman: appUrlIosDeliveryman ?? this.appUrlIosDeliveryman,
    appleLogin: appleLogin ?? this.appleLogin,
    orderSubscription: orderSubscription ?? this.orderSubscription,
    cookiesText: cookiesText ?? this.cookiesText,
    refundPolicyStatus: refundPolicyStatus ?? this.refundPolicyStatus,
    cancellationPolicyStatus:
        cancellationPolicyStatus ?? this.cancellationPolicyStatus,
    shippingPolicyStatus: shippingPolicyStatus ?? this.shippingPolicyStatus,
    refundPolicyData: refundPolicyData ?? this.refundPolicyData,
    cancellationPolicyData:
        cancellationPolicyData ?? this.cancellationPolicyData,
    shippingPolicyData: shippingPolicyData ?? this.shippingPolicyData,
    termsAndConditions: termsAndConditions ?? this.termsAndConditions,
    privacyPolicy: privacyPolicy ?? this.privacyPolicy,
    aboutUs: aboutUs ?? this.aboutUs,
    takeAway: takeAway ?? this.takeAway,
    repeatOrderOption: repeatOrderOption ?? this.repeatOrderOption,
    homeDelivery: homeDelivery ?? this.homeDelivery,
    activePaymentMethodList:
        activePaymentMethodList ?? this.activePaymentMethodList,
    addFundStatus: addFundStatus ?? this.addFundStatus,
    partialPaymentStatus: partialPaymentStatus ?? this.partialPaymentStatus,
    partialPaymentMethod: partialPaymentMethod ?? this.partialPaymentMethod,
    additionalChargeStatus:
        additionalChargeStatus ?? this.additionalChargeStatus,
    additionalChargeName: additionalChargeName ?? this.additionalChargeName,
    additionalCharge: additionalCharge ?? this.additionalCharge,
    dmPictureUploadStatus: dmPictureUploadStatus ?? this.dmPictureUploadStatus,
    digitalPaymentInfo: digitalPaymentInfo ?? this.digitalPaymentInfo,
    bannerData: bannerData ?? this.bannerData,
    offlinePaymentStatus: offlinePaymentStatus ?? this.offlinePaymentStatus,
    guestCheckoutStatus: guestCheckoutStatus ?? this.guestCheckoutStatus,
    countryPickerStatus: countryPickerStatus ?? this.countryPickerStatus,
    instantOrder: instantOrder ?? this.instantOrder,
    extraPackagingCharge: extraPackagingCharge ?? this.extraPackagingCharge,
    customerDateOrderSratus:
        customerDateOrderSratus ?? this.customerDateOrderSratus,
    customerOrderDate: customerOrderDate ?? this.customerOrderDate,
    deliverymanAdditionalJoinUsPageData:
        deliverymanAdditionalJoinUsPageData ??
        this.deliverymanAdditionalJoinUsPageData,
    restaurantAdditionalJoinUsPageData:
        restaurantAdditionalJoinUsPageData ??
        this.restaurantAdditionalJoinUsPageData,
    disbursementType: disbursementType ?? this.disbursementType,
    restaurantDisbursementWaitingTime:
        restaurantDisbursementWaitingTime ??
        this.restaurantDisbursementWaitingTime,
    dmDisbursementWaitingTime:
        dmDisbursementWaitingTime ?? this.dmDisbursementWaitingTime,
    minAmountToPayRestaurant:
        minAmountToPayRestaurant ?? this.minAmountToPayRestaurant,
    minAmountToPayDm: minAmountToPayDm ?? this.minAmountToPayDm,
    restaurantReviewReply: restaurantReviewReply ?? this.restaurantReviewReply,
    maintenanceModeData: maintenanceModeData ?? this.maintenanceModeData,
    firebaseOtpVerification:
        firebaseOtpVerification ?? this.firebaseOtpVerification,
    centralizeLogin: centralizeLogin ?? this.centralizeLogin,
    subscriptionBusinessModel:
        subscriptionBusinessModel ?? this.subscriptionBusinessModel,
    commissionBusinessModel:
        commissionBusinessModel ?? this.commissionBusinessModel,
    subscriptionDeadlineWarningDays:
        subscriptionDeadlineWarningDays ?? this.subscriptionDeadlineWarningDays,
    subscriptionDeadlineWarningMessage:
        subscriptionDeadlineWarningMessage ??
        this.subscriptionDeadlineWarningMessage,
    subscriptionFreeTrialDays:
        subscriptionFreeTrialDays ?? this.subscriptionFreeTrialDays,
    subscriptionFreeTrialType:
        subscriptionFreeTrialType ?? this.subscriptionFreeTrialType,
    subscriptionFreeTrialStatus:
        subscriptionFreeTrialStatus ?? this.subscriptionFreeTrialStatus,
    dineInOrderOption: dineInOrderOption ?? this.dineInOrderOption,
    adminFreeDelivery: adminFreeDelivery ?? this.adminFreeDelivery,
    systemTaxType: systemTaxType ?? this.systemTaxType,
    systemTaxIncludeStatus:
        systemTaxIncludeStatus ?? this.systemTaxIncludeStatus,
    isSmsActive: isSmsActive ?? this.isSmsActive,
    isMailActive: isMailActive ?? this.isMailActive,
  );

  factory Configuration.fromJson(Map<String, dynamic> json) =>
      _$ConfigurationFromJson(json);

  Map<String, dynamic> toJson() => _$ConfigurationToJson(this);
}
