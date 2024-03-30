import 'package:mrchord_app/feature/home/data/dto/chords_api_dto.dart';
import 'package:mrchord_app/feature/home/data/dto/static_content_api_dto.dart';

class HomeScreenApiDto {
  final StaticContentApiDto staticContent;
  final ChordsApiDto chords;

  HomeScreenApiDto({
    required this.staticContent,
    required this.chords,
  });

  factory HomeScreenApiDto.fromJson(Map<String, dynamic> json) =>
      HomeScreenApiDto(
        staticContent: StaticContentApiDto.fromJson(json['staticContent']),
        chords: ChordsApiDto.fromJson(json['chords']),
      );
}