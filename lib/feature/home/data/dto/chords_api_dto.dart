import 'package:mrchord_app/feature/home/data/dto/basic_api_dto.dart';
import 'package:mrchord_app/feature/home/data/dto/group_api_dto.dart';

class ChordsApiDto {
  final List<GroupApiDto> groups;
  final List<BasicApiDto> basics;

  ChordsApiDto({
    required this.groups,
    required this.basics,
  });

  factory ChordsApiDto.fromJson(Map<String, dynamic> json) =>
      ChordsApiDto(
        groups: List<GroupApiDto>.from(
            json['groups'].map((x) => GroupApiDto.fromJson(x))
        ),
        basics: List<BasicApiDto>.from(
            json['basics'].map((x) => BasicApiDto.fromJson(x))
        ),
      );
}