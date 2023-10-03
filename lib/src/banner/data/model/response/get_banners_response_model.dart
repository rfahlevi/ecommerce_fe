// To parse this JSON data, do
//
//     final getBannersResponseModel = getBannersResponseModelFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'get_banners_response_model.g.dart';

GetBannersResponseModel getBannersResponseModelFromJson(String str) =>
    GetBannersResponseModel.fromJson(json.decode(str));

String getBannersResponseModelToJson(GetBannersResponseModel data) => json.encode(data.toJson());

@JsonSerializable()
class GetBannersResponseModel {
  @JsonKey(name: "data")
  final List<GetBannersResponseModelData>? data;

  GetBannersResponseModel({
    this.data,
  });

  factory GetBannersResponseModel.fromJson(Map<String, dynamic> json) => _$GetBannersResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$GetBannersResponseModelToJson(this);
}

@JsonSerializable()
class GetBannersResponseModelData {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "attributes")
  final Attributes? attributes;

  GetBannersResponseModelData({
    this.id,
    this.attributes,
  });

  factory GetBannersResponseModelData.fromJson(Map<String, dynamic> json) =>
      _$GetBannersResponseModelDataFromJson(json);

  Map<String, dynamic> toJson() => _$GetBannersResponseModelDataToJson(this);
}

@JsonSerializable()
class Attributes {
  @JsonKey(name: "images")
  final Images? images;

  Attributes({
    this.images,
  });

  factory Attributes.fromJson(Map<String, dynamic> json) => _$AttributesFromJson(json);

  Map<String, dynamic> toJson() => _$AttributesToJson(this);
}

@JsonSerializable()
class Images {
  @JsonKey(name: "data")
  final List<ImagesData>? data;

  Images({
    this.data,
  });

  factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);

  Map<String, dynamic> toJson() => _$ImagesToJson(this);
}

@JsonSerializable()
class ImagesData {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "attributes")
  final FluffyAttributes? attributes;

  ImagesData({
    this.id,
    this.attributes,
  });

  factory ImagesData.fromJson(Map<String, dynamic> json) => _$ImagesDataFromJson(json);

  Map<String, dynamic> toJson() => _$ImagesDataToJson(this);
}

@JsonSerializable()
class FluffyAttributes {
  @JsonKey(name: "url")
  final String? url;
  @JsonKey(name: "createdAt")
  final DateTime? createdAt;
  @JsonKey(name: "updatedAt")
  final DateTime? updatedAt;

  FluffyAttributes({
    this.url,
    this.createdAt,
    this.updatedAt,
  });

  factory FluffyAttributes.fromJson(Map<String, dynamic> json) => _$FluffyAttributesFromJson(json);

  Map<String, dynamic> toJson() => _$FluffyAttributesToJson(this);
}
