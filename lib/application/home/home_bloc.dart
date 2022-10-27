import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:zartec/domain/core/failures/main_failure.dart';

import 'package:zartec/domain/home/home_model/home_model.dart';

import 'package:zartec/domain/home/home_service.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeService _homeService;
  HomeBloc(this._homeService) : super(HomeState.initial()) {
    on<LoadDataInHome>((event, emit) async {
      //send loading data to ui

      emit(const HomeState(
          isLoading: true, hasError: false, homeData: [], cartData: []));

      //calling api
      final result = await _homeService.getHomeData();
      //data send to ui
      final newState = result.fold((MainFailure failure) {
        return const HomeState(
            isLoading: false, cartData: [], hasError: true, homeData: []);
      }, (List<HomeModel> homedata) {
        // log(homedata.toString());
        return HomeState(
            cartData: [],
            isLoading: false,
            hasError: false,
            homeData: homedata);
      });
      emit(newState);
    });
  }
}
