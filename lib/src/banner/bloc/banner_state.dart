part of 'banner_bloc.dart';

@freezed
class BannerState with _$BannerState {
  const factory BannerState.initial() = _Initial;
  const factory BannerState.loading() = _Loading;
  const factory BannerState.success({required GetBannersResponseModel bannersData}) = _Success;
  const factory BannerState.error({required String error}) = _Error;
}
