import 'package:json_annotation/json_annotation.dart';

part 'media_data.g.dart';

@JsonSerializable()
class MediaData {
  @JsonKey(name: "upload_multiple_files")
  final int? uploadMultipleFiles;
  @JsonKey(name: "image")
  final int? image;
  @JsonKey(name: "pdf")
  final int? pdf;
  @JsonKey(name: "docs")
  final int? docs;

  MediaData({this.uploadMultipleFiles, this.image, this.pdf, this.docs});

  MediaData copyWith({
    int? uploadMultipleFiles,
    int? image,
    int? pdf,
    int? docs,
  }) => MediaData(
    uploadMultipleFiles: uploadMultipleFiles ?? this.uploadMultipleFiles,
    image: image ?? this.image,
    pdf: pdf ?? this.pdf,
    docs: docs ?? this.docs,
  );

  factory MediaData.fromJson(Map<String, dynamic> json) =>
      _$MediaDataFromJson(json);

  Map<String, dynamic> toJson() => _$MediaDataToJson(this);
}
