// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'configuration_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Configuration _$ConfigurationFromJson(
  Map<String, dynamic> json,
) => Configuration(
  businessName: json['business_name'] as String?,
  logo: json['logo'] as String?,
  logoFullUrl: json['logo_full_url'] as String?,
  address: json['address'] as String?,
  phone: json['phone'] as String?,
  email: json['email'] as String?,
  country: json['country'] as String?,
  defaultLocation: json['default_location'] == null
      ? null
      : DefaultLocation.fromJson(
          json['default_location'] as Map<String, dynamic>,
        ),
  currencySymbol: json['currency_symbol'] as String?,
  currencySymbolDirection: json['currency_symbol_direction'] as String?,
  appMinimumVersionAndroid: (json['app_minimum_version_android'] as num?)
      ?.toInt(),
  appUrlAndroid: json['app_url_android'],
  appMinimumVersionIos: (json['app_minimum_version_ios'] as num?)?.toInt(),
  appUrlIos: json['app_url_ios'],
  customerVerification: json['customer_verification'] as bool?,
  scheduleOrder: json['schedule_order'] as bool?,
  orderDeliveryVerification: json['order_delivery_verification'] as bool?,
  cashOnDelivery: json['cash_on_delivery'] as bool?,
  digitalPayment: json['digital_payment'] as bool?,
  demo: json['demo'] as bool?,
  maintenanceMode: json['maintenance_mode'] as bool?,
  orderConfirmationModel: json['order_confirmation_model'] as String?,
  popularFood: (json['popular_food'] as num?)?.toInt(),
  popularRestaurant: (json['popular_restaurant'] as num?)?.toInt(),
  newRestaurant: (json['new_restaurant'] as num?)?.toInt(),
  mostReviewedFoods: (json['most_reviewed_foods'] as num?)?.toInt(),
  showDmEarning: json['show_dm_earning'] as bool?,
  canceledByDeliveryman: json['canceled_by_deliveryman'] as bool?,
  canceledByRestaurant: json['canceled_by_restaurant'] as bool?,
  timeformat: json['timeformat'] as String?,
  language: (json['language'] as List<dynamic>?)
      ?.map((e) => Language.fromJson(e as Map<String, dynamic>))
      .toList(),
  toggleVegNonVeg: json['toggle_veg_non_veg'] as bool?,
  toggleDmRegistration: json['toggle_dm_registration'] as bool?,
  toggleRestaurantRegistration: json['toggle_restaurant_registration'] as bool?,
  scheduleOrderSlotDuration: (json['schedule_order_slot_duration'] as num?)
      ?.toInt(),
  digitAfterDecimalPoint: (json['digit_after_decimal_point'] as num?)?.toInt(),
  loyaltyPointExchangeRate: (json['loyalty_point_exchange_rate'] as num?)
      ?.toInt(),
  loyaltyPointItemPurchasePoint:
      (json['loyalty_point_item_purchase_point'] as num?)?.toInt(),
  loyaltyPointStatus: (json['loyalty_point_status'] as num?)?.toInt(),
  minimumPointToTransfer: (json['minimum_point_to_transfer'] as num?)?.toInt(),
  customerWalletStatus: (json['customer_wallet_status'] as num?)?.toInt(),
  refEarningStatus: (json['ref_earning_status'] as num?)?.toInt(),
  refEarningExchangeRate: (json['ref_earning_exchange_rate'] as num?)?.toInt(),
  dmTipsStatus: (json['dm_tips_status'] as num?)?.toInt(),
  theme: (json['theme'] as num?)?.toInt(),
  socialMedia: (json['social_media'] as List<dynamic>?)
      ?.map((e) => SocialMedia.fromJson(e as Map<String, dynamic>))
      .toList(),
  socialLogin: (json['social_login'] as List<dynamic>?)
      ?.map((e) => SocialLogin.fromJson(e as Map<String, dynamic>))
      .toList(),
  businessPlan: json['business_plan'] == null
      ? null
      : BusinessPlan.fromJson(json['business_plan'] as Map<String, dynamic>),
  adminCommission: (json['admin_commission'] as num?)?.toInt(),
  footerText: json['footer_text'] as String?,
  favIcon: json['fav_icon'] as String?,
  favIconFullUrl: json['fav_icon_full_url'] as String?,
  refundActiveStatus: json['refund_active_status'] as bool?,
  freeTrialPeriodStatus: (json['free_trial_period_status'] as num?)?.toInt(),
  freeTrialPeriodData: (json['free_trial_period_data'] as num?)?.toInt(),
  appMinimumVersionAndroidRestaurant:
      (json['app_minimum_version_android_restaurant'] as num?)?.toInt(),
  appUrlAndroidRestaurant: json['app_url_android_restaurant'],
  appMinimumVersionIosRestaurant:
      (json['app_minimum_version_ios_restaurant'] as num?)?.toInt(),
  appUrlIosRestaurant: json['app_url_ios_restaurant'],
  appMinimumVersionAndroidDeliveryman:
      (json['app_minimum_version_android_deliveryman'] as num?)?.toInt(),
  appUrlAndroidDeliveryman: json['app_url_android_deliveryman'],
  appMinimumVersionIosDeliveryman: json['app_minimum_version_ios_deliveryman'],
  appUrlIosDeliveryman: json['app_url_ios_deliveryman'],
  appleLogin: (json['apple_login'] as List<dynamic>?)
      ?.map((e) => AppleLogin.fromJson(e as Map<String, dynamic>))
      .toList(),
  orderSubscription: (json['order_subscription'] as num?)?.toInt(),
  cookiesText: json['cookies_text'] as String?,
  refundPolicyStatus: (json['refund_policy_status'] as num?)?.toInt(),
  cancellationPolicyStatus: (json['cancellation_policy_status'] as num?)
      ?.toInt(),
  shippingPolicyStatus: (json['shipping_policy_status'] as num?)?.toInt(),
  refundPolicyData: json['refund_policy_data'] as String?,
  cancellationPolicyData: json['cancellation_policy_data'] as String?,
  shippingPolicyData: json['shipping_policy_data'] as String?,
  termsAndConditions: json['terms_and_conditions'] as String?,
  privacyPolicy: json['privacy_policy'] as String?,
  aboutUs: json['about_us'] as String?,
  takeAway: json['take_away'] as bool?,
  repeatOrderOption: json['repeat_order_option'] as bool?,
  homeDelivery: json['home_delivery'] as bool?,
  activePaymentMethodList:
      (json['active_payment_method_list'] as List<dynamic>?)
          ?.map(
            (e) => ActivePaymentMethodList.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
  addFundStatus: (json['add_fund_status'] as num?)?.toInt(),
  partialPaymentStatus: (json['partial_payment_status'] as num?)?.toInt(),
  partialPaymentMethod: json['partial_payment_method'] as String?,
  additionalChargeStatus: (json['additional_charge_status'] as num?)?.toInt(),
  additionalChargeName: json['additional_charge_name'] as String?,
  additionalCharge: (json['additional_charge'] as num?)?.toInt(),
  dmPictureUploadStatus: (json['dm_picture_upload_status'] as num?)?.toInt(),
  digitalPaymentInfo: json['digital_payment_info'] == null
      ? null
      : DigitalPaymentInfo.fromJson(
          json['digital_payment_info'] as Map<String, dynamic>,
        ),
  bannerData: json['banner_data'] == null
      ? null
      : BannerData.fromJson(json['banner_data'] as Map<String, dynamic>),
  offlinePaymentStatus: (json['offline_payment_status'] as num?)?.toInt(),
  guestCheckoutStatus: (json['guest_checkout_status'] as num?)?.toInt(),
  countryPickerStatus: (json['country_picker_status'] as num?)?.toInt(),
  instantOrder: json['instant_order'] as bool?,
  extraPackagingCharge: json['extra_packaging_charge'] as bool?,
  customerDateOrderSratus: json['customer_date_order_sratus'] as bool?,
  customerOrderDate: (json['customer_order_date'] as num?)?.toInt(),
  deliverymanAdditionalJoinUsPageData:
      json['deliveryman_additional_join_us_page_data'] == null
      ? null
      : AdditionalJoinUsPageData.fromJson(
          json['deliveryman_additional_join_us_page_data']
              as Map<String, dynamic>,
        ),
  restaurantAdditionalJoinUsPageData:
      json['restaurant_additional_join_us_page_data'] == null
      ? null
      : AdditionalJoinUsPageData.fromJson(
          json['restaurant_additional_join_us_page_data']
              as Map<String, dynamic>,
        ),
  disbursementType: json['disbursement_type'] as String?,
  restaurantDisbursementWaitingTime:
      (json['restaurant_disbursement_waiting_time'] as num?)?.toInt(),
  dmDisbursementWaitingTime: (json['dm_disbursement_waiting_time'] as num?)
      ?.toInt(),
  minAmountToPayRestaurant: (json['min_amount_to_pay_restaurant'] as num?)
      ?.toInt(),
  minAmountToPayDm: (json['min_amount_to_pay_dm'] as num?)?.toInt(),
  restaurantReviewReply: json['restaurant_review_reply'] as bool?,
  maintenanceModeData: json['maintenance_mode_data'],
  firebaseOtpVerification: (json['firebase_otp_verification'] as num?)?.toInt(),
  centralizeLogin: json['centralize_login'] == null
      ? null
      : CentralizeLogin.fromJson(
          json['centralize_login'] as Map<String, dynamic>,
        ),
  subscriptionBusinessModel: (json['subscription_business_model'] as num?)
      ?.toInt(),
  commissionBusinessModel: (json['commission_business_model'] as num?)?.toInt(),
  subscriptionDeadlineWarningDays:
      (json['subscription_deadline_warning_days'] as num?)?.toInt(),
  subscriptionDeadlineWarningMessage:
      json['subscription_deadline_warning_message'] as String?,
  subscriptionFreeTrialDays: (json['subscription_free_trial_days'] as num?)
      ?.toInt(),
  subscriptionFreeTrialType: json['subscription_free_trial_type'] as String?,
  subscriptionFreeTrialStatus: (json['subscription_free_trial_status'] as num?)
      ?.toInt(),
  dineInOrderOption: (json['dine_in_order_option'] as num?)?.toInt(),
  adminFreeDelivery: json['admin_free_delivery'] == null
      ? null
      : AdminFreeDelivery.fromJson(
          json['admin_free_delivery'] as Map<String, dynamic>,
        ),
  systemTaxType: json['system_tax_type'] as String?,
  systemTaxIncludeStatus: (json['system_tax_include_status'] as num?)?.toInt(),
  isSmsActive: json['is_sms_active'] as bool?,
  isMailActive: json['is_mail_active'] as bool?,
);

Map<String, dynamic> _$ConfigurationToJson(
  Configuration instance,
) => <String, dynamic>{
  'business_name': instance.businessName,
  'logo': instance.logo,
  'logo_full_url': instance.logoFullUrl,
  'address': instance.address,
  'phone': instance.phone,
  'email': instance.email,
  'country': instance.country,
  'default_location': instance.defaultLocation,
  'currency_symbol': instance.currencySymbol,
  'currency_symbol_direction': instance.currencySymbolDirection,
  'app_minimum_version_android': instance.appMinimumVersionAndroid,
  'app_url_android': instance.appUrlAndroid,
  'app_minimum_version_ios': instance.appMinimumVersionIos,
  'app_url_ios': instance.appUrlIos,
  'customer_verification': instance.customerVerification,
  'schedule_order': instance.scheduleOrder,
  'order_delivery_verification': instance.orderDeliveryVerification,
  'cash_on_delivery': instance.cashOnDelivery,
  'digital_payment': instance.digitalPayment,
  'demo': instance.demo,
  'maintenance_mode': instance.maintenanceMode,
  'order_confirmation_model': instance.orderConfirmationModel,
  'popular_food': instance.popularFood,
  'popular_restaurant': instance.popularRestaurant,
  'new_restaurant': instance.newRestaurant,
  'most_reviewed_foods': instance.mostReviewedFoods,
  'show_dm_earning': instance.showDmEarning,
  'canceled_by_deliveryman': instance.canceledByDeliveryman,
  'canceled_by_restaurant': instance.canceledByRestaurant,
  'timeformat': instance.timeformat,
  'language': instance.language,
  'toggle_veg_non_veg': instance.toggleVegNonVeg,
  'toggle_dm_registration': instance.toggleDmRegistration,
  'toggle_restaurant_registration': instance.toggleRestaurantRegistration,
  'schedule_order_slot_duration': instance.scheduleOrderSlotDuration,
  'digit_after_decimal_point': instance.digitAfterDecimalPoint,
  'loyalty_point_exchange_rate': instance.loyaltyPointExchangeRate,
  'loyalty_point_item_purchase_point': instance.loyaltyPointItemPurchasePoint,
  'loyalty_point_status': instance.loyaltyPointStatus,
  'minimum_point_to_transfer': instance.minimumPointToTransfer,
  'customer_wallet_status': instance.customerWalletStatus,
  'ref_earning_status': instance.refEarningStatus,
  'ref_earning_exchange_rate': instance.refEarningExchangeRate,
  'dm_tips_status': instance.dmTipsStatus,
  'theme': instance.theme,
  'social_media': instance.socialMedia,
  'social_login': instance.socialLogin,
  'business_plan': instance.businessPlan,
  'admin_commission': instance.adminCommission,
  'footer_text': instance.footerText,
  'fav_icon': instance.favIcon,
  'fav_icon_full_url': instance.favIconFullUrl,
  'refund_active_status': instance.refundActiveStatus,
  'free_trial_period_status': instance.freeTrialPeriodStatus,
  'free_trial_period_data': instance.freeTrialPeriodData,
  'app_minimum_version_android_restaurant':
      instance.appMinimumVersionAndroidRestaurant,
  'app_url_android_restaurant': instance.appUrlAndroidRestaurant,
  'app_minimum_version_ios_restaurant': instance.appMinimumVersionIosRestaurant,
  'app_url_ios_restaurant': instance.appUrlIosRestaurant,
  'app_minimum_version_android_deliveryman':
      instance.appMinimumVersionAndroidDeliveryman,
  'app_url_android_deliveryman': instance.appUrlAndroidDeliveryman,
  'app_minimum_version_ios_deliveryman':
      instance.appMinimumVersionIosDeliveryman,
  'app_url_ios_deliveryman': instance.appUrlIosDeliveryman,
  'apple_login': instance.appleLogin,
  'order_subscription': instance.orderSubscription,
  'cookies_text': instance.cookiesText,
  'refund_policy_status': instance.refundPolicyStatus,
  'cancellation_policy_status': instance.cancellationPolicyStatus,
  'shipping_policy_status': instance.shippingPolicyStatus,
  'refund_policy_data': instance.refundPolicyData,
  'cancellation_policy_data': instance.cancellationPolicyData,
  'shipping_policy_data': instance.shippingPolicyData,
  'terms_and_conditions': instance.termsAndConditions,
  'privacy_policy': instance.privacyPolicy,
  'about_us': instance.aboutUs,
  'take_away': instance.takeAway,
  'repeat_order_option': instance.repeatOrderOption,
  'home_delivery': instance.homeDelivery,
  'active_payment_method_list': instance.activePaymentMethodList,
  'add_fund_status': instance.addFundStatus,
  'partial_payment_status': instance.partialPaymentStatus,
  'partial_payment_method': instance.partialPaymentMethod,
  'additional_charge_status': instance.additionalChargeStatus,
  'additional_charge_name': instance.additionalChargeName,
  'additional_charge': instance.additionalCharge,
  'dm_picture_upload_status': instance.dmPictureUploadStatus,
  'digital_payment_info': instance.digitalPaymentInfo,
  'banner_data': instance.bannerData,
  'offline_payment_status': instance.offlinePaymentStatus,
  'guest_checkout_status': instance.guestCheckoutStatus,
  'country_picker_status': instance.countryPickerStatus,
  'instant_order': instance.instantOrder,
  'extra_packaging_charge': instance.extraPackagingCharge,
  'customer_date_order_sratus': instance.customerDateOrderSratus,
  'customer_order_date': instance.customerOrderDate,
  'deliveryman_additional_join_us_page_data':
      instance.deliverymanAdditionalJoinUsPageData,
  'restaurant_additional_join_us_page_data':
      instance.restaurantAdditionalJoinUsPageData,
  'disbursement_type': instance.disbursementType,
  'restaurant_disbursement_waiting_time':
      instance.restaurantDisbursementWaitingTime,
  'dm_disbursement_waiting_time': instance.dmDisbursementWaitingTime,
  'min_amount_to_pay_restaurant': instance.minAmountToPayRestaurant,
  'min_amount_to_pay_dm': instance.minAmountToPayDm,
  'restaurant_review_reply': instance.restaurantReviewReply,
  'maintenance_mode_data': instance.maintenanceModeData,
  'firebase_otp_verification': instance.firebaseOtpVerification,
  'centralize_login': instance.centralizeLogin,
  'subscription_business_model': instance.subscriptionBusinessModel,
  'commission_business_model': instance.commissionBusinessModel,
  'subscription_deadline_warning_days':
      instance.subscriptionDeadlineWarningDays,
  'subscription_deadline_warning_message':
      instance.subscriptionDeadlineWarningMessage,
  'subscription_free_trial_days': instance.subscriptionFreeTrialDays,
  'subscription_free_trial_type': instance.subscriptionFreeTrialType,
  'subscription_free_trial_status': instance.subscriptionFreeTrialStatus,
  'dine_in_order_option': instance.dineInOrderOption,
  'admin_free_delivery': instance.adminFreeDelivery,
  'system_tax_type': instance.systemTaxType,
  'system_tax_include_status': instance.systemTaxIncludeStatus,
  'is_sms_active': instance.isSmsActive,
  'is_mail_active': instance.isMailActive,
};
