// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
  fieldType: json['field_type'] as String?,
  inputData: json['input_data'] as String?,
  checkData: json['check_data'],
  mediaData: json['media_data'] == null
      ? null
      : MediaData.fromJson(json['media_data'] as Map<String, dynamic>),
  placeholderData: json['placeholder_data'] as String?,
  isRequired: (json['is_required'] as num?)?.toInt(),
);

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
  'field_type': instance.fieldType,
  'input_data': instance.inputData,
  'check_data': instance.checkData,
  'media_data': instance.mediaData,
  'placeholder_data': instance.placeholderData,
  'is_required': instance.isRequired,
};
