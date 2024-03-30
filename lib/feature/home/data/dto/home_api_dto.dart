import 'package:mrchord_app/feature/home/data/dto/home_screen_api_dto.dart';

class HomeApiDto {
  final HomeScreenApiDto homeScreen;

  HomeApiDto({
    required this.homeScreen,
  });

  factory HomeApiDto.fromJson(Map<String, dynamic> json) =>
      HomeApiDto(
        homeScreen: HomeScreenApiDto.fromJson(json['homeScreen']),
      );
}