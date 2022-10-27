import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:zartec/domain/core/api_end_points.dart';
import 'package:zartec/domain/home/home_model/home_model.dart';
import 'package:zartec/domain/core/failures/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:zartec/domain/home/home_service.dart';

@LazySingleton(as: HomeService)
class HomeImplementation implements HomeService {
  @override
  Future<Either<MainFailure, List<HomeModel>>> getHomeData() async {
    try {
      final response = await Dio(BaseOptions()).get(
        ApiEndPoints.homeurl,
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        Map<String, dynamic> list = response.data[0]["table_menu_list"][0];

        final homelist = (list['category_dishes'] as List).map((e) {
          return HomeModel.fromJson(e);
        }).toList();

        //log(result.toString());
        return Right(homelist);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
}
