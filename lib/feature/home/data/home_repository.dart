import 'package:mrchord_app/feature/home/data/datasource/home_remote_datasource.dart';
import 'package:mrchord_app/feature/home/data/mapper/home_screen_mappers.dart';

import '../domain/model/home_models.dart';

class HomeRepository {
  final HomeRemoteDataSource _homeRemoteDataSource;

  const HomeRepository(this._homeRemoteDataSource);

  Future<HomeScreen> getHome() async {
    final homeApiResponse = await _homeRemoteDataSource.getHome();
    return homeApiResponse.toHomeScreen();
  }
}