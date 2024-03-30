import 'package:mrchord_app/feature/home/domain/entity/home_screen.dart';

abstract class HomeRepository {
  Future<HomeScreen> getHome();
}