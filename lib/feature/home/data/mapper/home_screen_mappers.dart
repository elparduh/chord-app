import 'package:mrchord_app/feature/home/domain/model/home_models.dart';
import '../model/home_api_models.dart';

extension HomeApiResponseExt on HomeApiResponse {
  toHomeScreen() => HomeScreen(
    title: homeScreen.staticContent.title,
    subtitle: homeScreen.staticContent.subtitle,
    description: homeScreen.staticContent.description,
    chordImg: homeScreen.staticContent.chordImg,
    groups: homeScreen.chords.groups.toGroupList(),
    chords: homeScreen.chords.basics.toChordList(),
  );
}

extension GroupListExt on List<GroupApiResponse> {
  List<Group> toGroupList() =>
      map<Group>((e) => e.toGroup()).toList();
}

extension GroupApiResponseExt on GroupApiResponse {
  toGroup() => Group(
      id: id,
      name: name,
      latinName: latinName
  );
}

extension BasicListExt on List<BasicApiResponse> {
  List<Chord> toChordList() =>
      map<Chord>((e) => e.toChord()).toList();
}

extension BasicApiResponseExt on BasicApiResponse {
  toChord() => Chord(
    id: id,
    groupId: groupId,
    note: note,
    latinNote: latinNote,
    chordImg: chordImg,
  );
}