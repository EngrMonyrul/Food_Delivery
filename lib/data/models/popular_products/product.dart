import 'package:food_resturant_app/data/models/popular_products/tag.dart';
import 'package:food_resturant_app/data/models/popular_products/variation.dart';
import 'package:json_annotation/json_annotation.dart';

import '../banners/cuisine.dart';
import '../banners/storage.dart';
import '../banners/translation.dart';
import 'add_on.dart';
import 'allergy.dart';
import 'category_id.dart';
import 'nutration.dart';

part 'product.g.dart';

@JsonSerializable()
class Product {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "description")
  final String? description;
  @JsonKey(name: "image")
  final String? image;
  @JsonKey(name: "category_id")
  final int? categoryId;
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
  @JsonKey(name: "available_time_starts")
  final String? availableTimeStarts;
  @JsonKey(name: "available_time_ends")
  final String? availableTimeEnds;
  @JsonKey(name: "veg")
  final int? veg;
  @JsonKey(name: "status")
  final int? status;
  @JsonKey(name: "restaurant_id")
  final int? restaurantId;
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;
  @JsonKey(name: "order_count")
  final int? orderCount;
  @JsonKey(name: "avg_rating")
  final double? avgRating;
  @JsonKey(name: "rating_count")
  final int? ratingCount;
  @JsonKey(name: "recommended")
  final int? recommended;
  @JsonKey(name: "slug")
  final String? slug;
  @JsonKey(name: "maximum_cart_quantity")
  final dynamic maximumCartQuantity;
  @JsonKey(name: "is_halal")
  final int? isHalal;
  @JsonKey(name: "item_stock")
  final int? itemStock;
  @JsonKey(name: "sell_count")
  final int? sellCount;
  @JsonKey(name: "stock_type")
  final String? stockType;
  @JsonKey(name: "temp_available")
  final int? tempAvailable;
  @JsonKey(name: "open")
  final int? open;
  @JsonKey(name: "reviews_count")
  final int? reviewsCount;
  @JsonKey(name: "tags")
  final List<Tag>? tags;
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
  @JsonKey(name: "min_delivery_time")
  final int? minDeliveryTime;
  @JsonKey(name: "max_delivery_time")
  final int? maxDeliveryTime;
  @JsonKey(name: "free_delivery")
  final int? freeDelivery;
  @JsonKey(name: "halal_tag_status")
  final int? halalTagStatus;
  @JsonKey(name: "nutritions_name")
  final List<String>? nutritionsName;
  @JsonKey(name: "allergies_name")
  final List<String>? allergiesName;
  @JsonKey(name: "cuisines")
  final List<Cuisine>? cuisines;
  @JsonKey(name: "tax_data")
  final List<dynamic>? taxData;
  @JsonKey(name: "image_full_url")
  final String? imageFullUrl;
  @JsonKey(name: "storage")
  final List<Storage>? storage;
  @JsonKey(name: "translations")
  final List<Translation>? translations;
  @JsonKey(name: "nutritions")
  final List<Nutrition>? nutritions;
  @JsonKey(name: "allergies")
  final List<Allergy>? allergies;
  @JsonKey(name: "new_variations")
  final List<dynamic>? newVariations;

  Product({
    this.id,
    this.name,
    this.description,
    this.image,
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
    this.availableTimeStarts,
    this.availableTimeEnds,
    this.veg,
    this.status,
    this.restaurantId,
    this.createdAt,
    this.updatedAt,
    this.orderCount,
    this.avgRating,
    this.ratingCount,
    this.recommended,
    this.slug,
    this.maximumCartQuantity,
    this.isHalal,
    this.itemStock,
    this.sellCount,
    this.stockType,
    this.tempAvailable,
    this.open,
    this.reviewsCount,
    this.tags,
    this.restaurantName,
    this.restaurantStatus,
    this.restaurantDiscount,
    this.restaurantOpeningTime,
    this.restaurantClosingTime,
    this.scheduleOrder,
    this.minDeliveryTime,
    this.maxDeliveryTime,
    this.freeDelivery,
    this.halalTagStatus,
    this.nutritionsName,
    this.allergiesName,
    this.cuisines,
    this.taxData,
    this.imageFullUrl,
    this.storage,
    this.translations,
    this.nutritions,
    this.allergies,
    this.newVariations,
  });

  Product copyWith({
    int? id,
    String? name,
    String? description,
    String? image,
    int? categoryId,
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
    String? availableTimeStarts,
    String? availableTimeEnds,
    int? veg,
    int? status,
    int? restaurantId,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? orderCount,
    double? avgRating,
    int? ratingCount,
    int? recommended,
    String? slug,
    dynamic maximumCartQuantity,
    int? isHalal,
    int? itemStock,
    int? sellCount,
    String? stockType,
    int? tempAvailable,
    int? open,
    int? reviewsCount,
    List<Tag>? tags,
    String? restaurantName,
    int? restaurantStatus,
    int? restaurantDiscount,
    String? restaurantOpeningTime,
    String? restaurantClosingTime,
    bool? scheduleOrder,
    int? minDeliveryTime,
    int? maxDeliveryTime,
    int? freeDelivery,
    int? halalTagStatus,
    List<String>? nutritionsName,
    List<String>? allergiesName,
    List<Cuisine>? cuisines,
    List<dynamic>? taxData,
    String? imageFullUrl,
    List<Storage>? storage,
    List<Translation>? translations,
    List<Nutrition>? nutritions,
    List<Allergy>? allergies,
    List<dynamic>? newVariations,
  }) => Product(
    id: id ?? this.id,
    name: name ?? this.name,
    description: description ?? this.description,
    image: image ?? this.image,
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
    availableTimeStarts: availableTimeStarts ?? this.availableTimeStarts,
    availableTimeEnds: availableTimeEnds ?? this.availableTimeEnds,
    veg: veg ?? this.veg,
    status: status ?? this.status,
    restaurantId: restaurantId ?? this.restaurantId,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    orderCount: orderCount ?? this.orderCount,
    avgRating: avgRating ?? this.avgRating,
    ratingCount: ratingCount ?? this.ratingCount,
    recommended: recommended ?? this.recommended,
    slug: slug ?? this.slug,
    maximumCartQuantity: maximumCartQuantity ?? this.maximumCartQuantity,
    isHalal: isHalal ?? this.isHalal,
    itemStock: itemStock ?? this.itemStock,
    sellCount: sellCount ?? this.sellCount,
    stockType: stockType ?? this.stockType,
    tempAvailable: tempAvailable ?? this.tempAvailable,
    open: open ?? this.open,
    reviewsCount: reviewsCount ?? this.reviewsCount,
    tags: tags ?? this.tags,
    restaurantName: restaurantName ?? this.restaurantName,
    restaurantStatus: restaurantStatus ?? this.restaurantStatus,
    restaurantDiscount: restaurantDiscount ?? this.restaurantDiscount,
    restaurantOpeningTime: restaurantOpeningTime ?? this.restaurantOpeningTime,
    restaurantClosingTime: restaurantClosingTime ?? this.restaurantClosingTime,
    scheduleOrder: scheduleOrder ?? this.scheduleOrder,
    minDeliveryTime: minDeliveryTime ?? this.minDeliveryTime,
    maxDeliveryTime: maxDeliveryTime ?? this.maxDeliveryTime,
    freeDelivery: freeDelivery ?? this.freeDelivery,
    halalTagStatus: halalTagStatus ?? this.halalTagStatus,
    nutritionsName: nutritionsName ?? this.nutritionsName,
    allergiesName: allergiesName ?? this.allergiesName,
    cuisines: cuisines ?? this.cuisines,
    taxData: taxData ?? this.taxData,
    imageFullUrl: imageFullUrl ?? this.imageFullUrl,
    storage: storage ?? this.storage,
    translations: translations ?? this.translations,
    nutritions: nutritions ?? this.nutritions,
    allergies: allergies ?? this.allergies,
    newVariations: newVariations ?? this.newVariations,
  );

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
