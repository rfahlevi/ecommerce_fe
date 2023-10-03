part of 'get_categories_bloc.dart';

@freezed
class GetCategoriesState with _$GetCategoriesState {
  const factory GetCategoriesState.initial() = _Initial;
  const factory GetCategoriesState.loading() = _Loading;
  const factory GetCategoriesState.success({required GetCategoriesResponseModel categoriesData}) = _Success;
  const factory GetCategoriesState.error({required String error}) = _Error;
}
