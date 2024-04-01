import 'package:get_it/get_it.dart';
import 'package:mrchord_app/feature/home/data/datasource/home_remote_datasource.dart';
import 'package:mrchord_app/feature/home/data/repository/home_repository_impl.dart';
import 'package:mrchord_app/feature/home/domain/repository/home_repository.dart';
import 'package:mrchord_app/feature/home/domain/usecase/get_home_usecase.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton<HomeRemoteDataSource>(() =>
      HomeRemoteDataSourceImpl()
  );
  sl.registerLazySingleton<HomeRepository>(() =>
      HomeRepositoryImpl(sl())
  );
  sl.registerLazySingleton<GetHomeUseCase>(() =>
      GetHomeUseCase(sl())
  );
}