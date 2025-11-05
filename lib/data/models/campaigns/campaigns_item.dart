import 'package:json_annotation/json_annotation.dart';

import '../banners/cuisine.dart';
import '../banners/storage.dart';
import '../banners/translation.dart';
import '../popular_products/add_on.dart';
import '../popular_products/category_id.dart';
import '../popular_products/variation.dart';

part 'campaigns_item.g.dart';

@JsonSerializable()
class CampaignsItem {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "image")
  final String? image;
  @JsonKey(name: "description")
  final String? description;
  @JsonKey(name: "status")
  final int? status;
  @JsonKey(name: "admin_id")
  final int? adminId;
  @JsonKey(name: "category_id")
  final dynamic categoryId;
  @JsonKey(name: "category_ids")
  final List<CategoryId>? categoryIds;
  @JsonKey(name: "variations")
  final List<Variation>? variations;
  @JsonKey(name: "add_ons")
  final List<AddOn>? addOns;
  @JsonKey(name: "attributes")
  final String? attributes;
  @JsonKey(name: "choice_options")
  final String? choiceOptions;
  @JsonKey(name: "price")
  final int? price;
  @JsonKey(name: "tax")
  final int? tax;
  @JsonKey(name: "tax_type")
  final String? taxType;
  @JsonKey(name: "discount")
  final int? discount;
  @JsonKey(name: "discount_type")
  final String? discountType;
  @JsonKey(name: "restaurant_id")
  final int? restaurantId;
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;
  @JsonKey(name: "veg")
  final int? veg;
  @JsonKey(name: "slug")
  final dynamic slug;
  @JsonKey(name: "maximum_cart_quantity")
  final int? maximumCartQuantity;
  @JsonKey(name: "temp_available")
  final int? tempAvailable;
  @JsonKey(name: "open")
  final int? open;
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "available_time_starts")
  final String? availableTimeStarts;
  @JsonKey(name: "available_time_ends")
  final String? availableTimeEnds;
  @JsonKey(name: "available_date_starts")
  final DateTime? availableDateStarts;
  @JsonKey(name: "available_date_ends")
  final DateTime? availableDateEnds;
  @JsonKey(name: "recommended")
  final int? recommended;
  @JsonKey(name: "tags")
  final dynamic tags;
  @JsonKey(name: "restaurant_name")
  final String? restaurantName;
  @JsonKey(name: "restaurant_status")
  final int? restaurantStatus;
  @JsonKey(name: "restaurant_discount")
  final int? restaurantDiscount;
  @JsonKey(name: "restaurant_opening_time")
  final String? restaurantOpeningTime;
  @JsonKey(name: "restaurant_closing_time")
  final String? restaurantClosingTime;
  @JsonKey(name: "schedule_order")
  final bool? scheduleOrder;
  @JsonKey(name: "rating_count")
  final int? ratingCount;
  @JsonKey(name: "avg_rating")
  final int? avgRating;
  @JsonKey(name: "min_delivery_time")
  final int? minDeliveryTime;
  @JsonKey(name: "max_delivery_time")
  final int? maxDeliveryTime;
  @JsonKey(name: "free_delivery")
  final int? freeDelivery;
  @JsonKey(name: "halal_tag_status")
  final int? halalTagStatus;
  @JsonKey(name: "nutritions_name")
  final dynamic nutritionsName;
  @JsonKey(name: "allergies_name")
  final dynamic allergiesName;
  @JsonKey(name: "cuisines")
  final List<Cuisine>? cuisines;
  @JsonKey(name: "tax_data")
  final List<dynamic>? taxData;
  @JsonKey(name: "image_full_url")
  final String? imageFullUrl;
  @JsonKey(name: "translations")
  final List<Translation>? translations;
  @JsonKey(name: "storage")
  final List<Storage>? storage;

  CampaignsItem({
    this.id,
    this.image,
    this.description,
    this.status,
    this.adminId,
    this.categoryId,
    this.categoryIds,
    this.variations,
    this.addOns,
    this.attributes,
    this.choiceOptions,
    this.price,
    this.tax,
    this.taxType,
    this.discount,
    this.discountType,
    this.restaurantId,
    this.createdAt,
    this.updatedAt,
    this.veg,
    this.slug,
    this.maximumCartQuantity,
    this.tempAvailable,
    this.open,
    this.name,
    this.availableTimeStarts,
    this.availableTimeEnds,
    this.availableDateStarts,
    this.availableDateEnds,
    this.recommended,
    this.tags,
    this.restaurantName,
    this.restaurantStatus,
    this.restaurantDiscount,
    this.restaurantOpeningTime,
    this.restaurantClosingTime,
    this.scheduleOrder,
    this.ratingCount,
    this.avgRating,
    this.minDeliveryTime,
    this.maxDeliveryTime,
    this.freeDelivery,
    this.halalTagStatus,
    this.nutritionsName,
    this.allergiesName,
    this.cuisines,
    this.taxData,
    this.imageFullUrl,
    this.translations,
    this.storage,
  });

  CampaignsItem copyWith({
    int? id,
    String? image,
    String? description,
    int? status,
    int? adminId,
    dynamic categoryId,
    List<CategoryId>? categoryIds,
    List<Variation>? variations,
    List<AddOn>? addOns,
    String? attributes,
    String? choiceOptions,
    int? price,
    int? tax,
    String? taxType,
    int? discount,
    String? discountType,
    int? restaurantId,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? veg,
    dynamic slug,
    int? maximumCartQuantity,
    int? tempAvailable,
    int? open,
    String? name,
    String? availableTimeStarts,
    String? availableTimeEnds,
    DateTime? availableDateStarts,
    DateTime? availableDateEnds,
    int? recommended,
    dynamic tags,
    String? restaurantName,
    int? restaurantStatus,
    int? restaurantDiscount,
    String? restaurantOpeningTime,
    String? restaurantClosingTime,
    bool? scheduleOrder,
    int? ratingCount,
    int? avgRating,
    int? minDeliveryTime,
    int? maxDeliveryTime,
    int? freeDelivery,
    int? halalTagStatus,
    dynamic nutritionsName,
    dynamic allergiesName,
    List<Cuisine>? cuisines,
    List<dynamic>? taxData,
    String? imageFullUrl,
    List<Translation>? translations,
    List<Storage>? storage,
  }) => CampaignsItem(
    id: id ?? this.id,
    image: image ?? this.image,
    description: description ?? this.description,
    status: status ?? this.status,
    adminId: adminId ?? this.adminId,
    categoryId: categoryId ?? this.categoryId,
    categoryIds: categoryIds ?? this.categoryIds,
    variations: variations ?? this.variations,
    addOns: addOns ?? this.addOns,
    attributes: attributes ?? this.attributes,
    choiceOptions: choiceOptions ?? this.choiceOptions,
    price: price ?? this.price,
    tax: tax ?? this.tax,
    taxType: taxType ?? this.taxType,
    discount: discount ?? this.discount,
    discountType: discountType ?? this.discountType,
    restaurantId: restaurantId ?? this.restaurantId,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    veg: veg ?? this.veg,
    slug: slug ?? this.slug,
    maximumCartQuantity: maximumCartQuantity ?? this.maximumCartQuantity,
    tempAvailable: tempAvailable ?? this.tempAvailable,
    open: open ?? this.open,
    name: name ?? this.name,
    availableTimeStarts: availableTimeStarts ?? this.availableTimeStarts,
    availableTimeEnds: availableTimeEnds ?? this.availableTimeEnds,
    availableDateStarts: availableDateStarts ?? this.availableDateStarts,
    availableDateEnds: availableDateEnds ?? this.availableDateEnds,
    recommended: recommended ?? this.recommended,
    tags: tags ?? this.tags,
    restaurantName: restaurantName ?? this.restaurantName,
    restaurantStatus: restaurantStatus ?? this.restaurantStatus,
    restaurantDiscount: restaurantDiscount ?? this.restaurantDiscount,
    restaurantOpeningTime: restaurantOpeningTime ?? this.restaurantOpeningTime,
    restaurantClosingTime: restaurantClosingTime ?? this.restaurantClosingTime,
    scheduleOrder: scheduleOrder ?? this.scheduleOrder,
    ratingCount: ratingCount ?? this.ratingCount,
    avgRating: avgRating ?? this.avgRating,
    minDeliveryTime: minDeliveryTime ?? this.minDeliveryTime,
    maxDeliveryTime: maxDeliveryTime ?? this.maxDeliveryTime,
    freeDelivery: freeDelivery ?? this.freeDelivery,
    halalTagStatus: halalTagStatus ?? this.halalTagStatus,
    nutritionsName: nutritionsName ?? this.nutritionsName,
    allergiesName: allergiesName ?? this.allergiesName,
    cuisines: cuisines ?? this.cuisines,
    taxData: taxData ?? this.taxData,
    imageFullUrl: imageFullUrl ?? this.imageFullUrl,
    translations: translations ?? this.translations,
    storage: storage ?? this.storage,
  );

  factory CampaignsItem.fromJson(Map<String, dynamic> json) =>
      _$CampaignsItemFromJson(json);

  Map<String, dynamic> toJson() => _$CampaignsItemToJson(this);
}
