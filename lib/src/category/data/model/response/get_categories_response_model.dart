// To parse this JSON data, do
//
//     final getCategoriesResponseModel = getCategoriesResponseModelFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'get_categories_response_model.g.dart';

GetCategoriesResponseModel getCategoriesResponseModelFromJson(String str) =>
    GetCategoriesResponseModel.fromJson(json.decode(str));

String getCategoriesResponseModelToJson(GetCategoriesResponseModel data) => json.encode(data.toJson());

@JsonSerializable()
class GetCategoriesResponseModel {
  @JsonKey(name: "data")
  final List<Datum>? data;

  GetCategoriesResponseModel({
    this.data,
  });

  factory GetCategoriesResponseModel.fromJson(Map<String, dynamic> json) => _$GetCategoriesResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$GetCategoriesResponseModelToJson(this);
}

@JsonSerializable()
class Datum {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "attributes")
  final DatumAttributes? attributes;

  Datum({
    this.id,
    this.attributes,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);
}

@JsonSerializable()
class DatumAttributes {
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "createdAt")
  final DateTime? createdAt;
  @JsonKey(name: "updatedAt")
  final DateTime? updatedAt;
  @JsonKey(name: "image")
  final Image? image;

  DatumAttributes({
    this.name,
    this.createdAt,
    this.updatedAt,
    this.image,
  });

  factory DatumAttributes.fromJson(Map<String, dynamic> json) => _$DatumAttributesFromJson(json);

  Map<String, dynamic> toJson() => _$DatumAttributesToJson(this);
}

@JsonSerializable()
class Image {
  @JsonKey(name: "data")
  final Data? data;

  Image({
    this.data,
  });

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);

  Map<String, dynamic> toJson() => _$ImageToJson(this);
}

@JsonSerializable()
class Data {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "attributes")
  final DataAttributes? attributes;

  Data({
    this.id,
    this.attributes,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class DataAttributes {
  @JsonKey(name: "url")
  final String? url;
  @JsonKey(name: "createdAt")
  final DateTime? createdAt;
  @JsonKey(name: "updatedAt")
  final DateTime? updatedAt;

  DataAttributes({
    this.url,
    this.createdAt,
    this.updatedAt,
  });

  factory DataAttributes.fromJson(Map<String, dynamic> json) => _$DataAttributesFromJson(json);

  Map<String, dynamic> toJson() => _$DataAttributesToJson(this);
}
