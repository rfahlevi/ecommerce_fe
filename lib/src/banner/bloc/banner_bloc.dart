// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:ecommerce_fe/src/banner/data/model/response/get_banners_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ecommerce_fe/src/banner/data/datasource/banner_datasource.dart';
part 'banner_bloc.freezed.dart';
part 'banner_event.dart';
part 'banner_state.dart';

class BannerBloc extends Bloc<BannerEvent, BannerState> {
  final BannerDatasource bannerDatasource;
  BannerBloc(
    this.bannerDatasource,
  ) : super(const _Initial()) {
    on<_DoGet>((event, emit) async {
      var result = await bannerDatasource.getBanners();
      result.fold((l) => emit(BannerState.error(error: l)), (r) => emit(BannerState.success(bannersData: r)));
    });
  }
}
