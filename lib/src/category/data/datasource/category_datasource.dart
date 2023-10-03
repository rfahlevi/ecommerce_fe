import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:ecommerce_fe/common/domain/domain.dart';
import 'package:ecommerce_fe/src/category/data/model/response/get_categories_response_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CategoryDatasource {
  Future<Either<String, GetCategoriesResponseModel>> getCategories() async {
    var headers = {
      'Content-Type': 'application/json',
    };

    var response = await http.get(
      Uri.parse('${AppDomain.baseUrl}/categories?populate=*'),
      headers: headers,
    );

    var statusCode = response.statusCode;
    var data = jsonDecode(response.body);
    debugPrint('$statusCode $data');

    if (statusCode == 200) {
      return Right(GetCategoriesResponseModel.fromJson(data));
    } else {
      return Left(data['error']['message']);
    }
  }
}
