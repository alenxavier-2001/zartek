import 'package:dartz/dartz.dart';
import 'package:zartec/domain/core/failures/main_failure.dart';
import 'package:zartec/domain/home/home_model/home_model.dart';

abstract class HomeService {
  Future<Either<MainFailure, List<HomeModel>>> getHomeData();
}
