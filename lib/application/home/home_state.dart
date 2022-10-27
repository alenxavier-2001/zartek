part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool isLoading,
    required bool hasError,
    required List<HomeModel> homeData,
    required List<HomeModel> cartData,
  }) = _Initial;
  factory HomeState.initial() => const HomeState(
      isLoading: false, hasError: false, homeData: [], cartData: []);
}
