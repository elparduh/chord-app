import 'package:mrchord_app/feature/home/domain/entity/home_screen.dart';
import 'package:mrchord_app/feature/home/domain/repository/home_repository.dart';


class GetHomeUseCase {
  final HomeRepository _homeRepository;

  const GetHomeUseCase(this._homeRepository);

  Future<HomeScreen> call() async => _homeRepository.getHome();
}