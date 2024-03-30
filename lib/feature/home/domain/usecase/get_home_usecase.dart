import 'package:mrchord_app/feature/home/data/home_repository.dart';
import 'package:mrchord_app/feature/home/domain/model/home_models.dart';

class GetHomeUseCase {
  final HomeRepository _homeRepository;

  const GetHomeUseCase(this._homeRepository);

  Future<HomeScreen> getHome() async => _homeRepository.getHome();
}