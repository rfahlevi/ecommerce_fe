// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_categories_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCategoriesResponseModel _$GetCategoriesResponseModelFromJson(
        Map<String, dynamic> json) =>
    GetCategoriesResponseModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetCategoriesResponseModelToJson(
        GetCategoriesResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      id: json['id'] as int?,
      attributes: json['attributes'] == null
          ? null
          : DatumAttributes.fromJson(
              json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
    };

DatumAttributes _$DatumAttributesFromJson(Map<String, dynamic> json) =>
    DatumAttributes(
      name: json['name'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      image: json['image'] == null
          ? null
          : Image.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DatumAttributesToJson(DatumAttributes instance) =>
    <String, dynamic>{
      'name': instance.name,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'image': instance.image,
    };

Image _$ImageFromJson(Map<String, dynamic> json) => Image(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ImageToJson(Image instance) => <String, dynamic>{
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: json['id'] as int?,
      attributes: json['attributes'] == null
          ? null
          : DataAttributes.fromJson(json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
    };

DataAttributes _$DataAttributesFromJson(Map<String, dynamic> json) =>
    DataAttributes(
      url: json['url'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$DataAttributesToJson(DataAttributes instance) =>
    <String, dynamic>{
      'url': instance.url,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
