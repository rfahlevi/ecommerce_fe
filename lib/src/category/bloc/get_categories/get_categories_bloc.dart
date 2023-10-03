// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:ecommerce_fe/src/category/data/datasource/category_datasource.dart';
import 'package:ecommerce_fe/src/category/data/model/response/get_categories_response_model.dart';

part 'get_categories_bloc.freezed.dart';
part 'get_categories_event.dart';
part 'get_categories_state.dart';

class GetCategoriesBloc extends Bloc<GetCategoriesEvent, GetCategoriesState> {
  CategoryDatasource categoryDatasource;
  GetCategoriesBloc(
    this.categoryDatasource,
  ) : super(const _Initial()) {
    on<_DoGet>((event, emit) async {
      var result = await categoryDatasource.getCategories();
      result.fold(
          (l) => emit(GetCategoriesState.error(error: l)), (r) => emit(GetCategoriesState.success(categoriesData: r)));
    });
  }
}
