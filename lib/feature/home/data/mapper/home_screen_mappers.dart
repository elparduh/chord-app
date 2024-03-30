
import 'package:mrchord_app/feature/home/data/dto/basic_api_dto.dart';
import 'package:mrchord_app/feature/home/data/dto/group_api_dto.dart';
import 'package:mrchord_app/feature/home/data/dto/home_api_dto.dart';
import 'package:mrchord_app/feature/home/domain/entity/chord.dart';
import 'package:mrchord_app/feature/home/domain/entity/group.dart';
import 'package:mrchord_app/feature/home/domain/entity/home_screen.dart';

extension HomeApiResponseExt on HomeApiDto {
  toHomeScreen() => HomeScreen(
    title: homeScreen.staticContent.title,
    subtitle: homeScreen.staticContent.subtitle,
    description: homeScreen.staticContent.description,
    chordImg: homeScreen.staticContent.chordImg,
    groups: homeScreen.chords.groups.toGroupList(),
    chords: homeScreen.chords.basics.toChordList(),
  );
}

extension GroupListExt on List<GroupApiDto> {
  List<Group> toGroupList() =>
      map<Group>((e) => e.toGroup()).toList();
}

extension GroupApiResponseExt on GroupApiDto {
  toGroup() => Group(
      id: id,
      name: name,
      latinName: latinName
  );
}

extension BasicListExt on List<BasicApiDto> {
  List<Chord> toChordList() =>
      map<Chord>((e) => e.toChord()).toList();
}

extension BasicApiResponseExt on BasicApiDto {
  toChord() => Chord(
    id: id,
    groupId: groupId,
    note: note,
    latinNote: latinNote,
    chordImg: chordImg,
  );
}