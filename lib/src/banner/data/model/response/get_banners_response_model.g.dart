// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_banners_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetBannersResponseModel _$GetBannersResponseModelFromJson(
        Map<String, dynamic> json) =>
    GetBannersResponseModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) =>
              GetBannersResponseModelData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetBannersResponseModelToJson(
        GetBannersResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

GetBannersResponseModelData _$GetBannersResponseModelDataFromJson(
        Map<String, dynamic> json) =>
    GetBannersResponseModelData(
      id: json['id'] as int?,
      attributes: json['attributes'] == null
          ? null
          : Attributes.fromJson(json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetBannersResponseModelDataToJson(
        GetBannersResponseModelData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
    };

Attributes _$AttributesFromJson(Map<String, dynamic> json) => Attributes(
      images: json['images'] == null
          ? null
          : Images.fromJson(json['images'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AttributesToJson(Attributes instance) =>
    <String, dynamic>{
      'images': instance.images,
    };

Images _$ImagesFromJson(Map<String, dynamic> json) => Images(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ImagesData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ImagesToJson(Images instance) => <String, dynamic>{
      'data': instance.data,
    };

ImagesData _$ImagesDataFromJson(Map<String, dynamic> json) => ImagesData(
      id: json['id'] as int?,
      attributes: json['attributes'] == null
          ? null
          : FluffyAttributes.fromJson(
              json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ImagesDataToJson(ImagesData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
    };

FluffyAttributes _$FluffyAttributesFromJson(Map<String, dynamic> json) =>
    FluffyAttributes(
      url: json['url'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$FluffyAttributesToJson(FluffyAttributes instance) =>
    <String, dynamic>{
      'url': instance.url,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
