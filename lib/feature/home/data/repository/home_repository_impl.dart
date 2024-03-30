import 'package:mrchord_app/feature/home/data/datasource/home_remote_datasource.dart';
import 'package:mrchord_app/feature/home/data/mapper/home_screen_mappers.dart';
import 'package:mrchord_app/feature/home/domain/entity/home_screen.dart';
import 'package:mrchord_app/feature/home/domain/repository/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDataSource _homeRemoteDataSource;

  const HomeRepositoryImpl(this._homeRemoteDataSource);

  @override
  Future<HomeScreen> getHome() async {
    final homeApiResponse = await _homeRemoteDataSource.getHome();
    return homeApiResponse.toHomeScreen();
  }
}