class HomeApiResponse {
  final HomeScreenApiResponse homeScreen;

  HomeApiResponse({
    required this.homeScreen,
  });

}

class HomeScreenApiResponse {
  final StaticContentApiResponse staticContent;
  final ChordsApiResponse chords;

  HomeScreenApiResponse({
    required this.staticContent,
    required this.chords,
  });

}

class ChordsApiResponse {
  final List<GroupApiResponse> groups;
  final List<BasicApiResponse> basics;

  ChordsApiResponse({
    required this.groups,
    required this.basics,
  });

}

class BasicApiResponse {
  final int id;
  final int groupId;
  final String note;
  final String latinNote;
  final String chordImg;

  BasicApiResponse({
    required this.id,
    required this.groupId,
    required this.note,
    required this.latinNote,
    required this.chordImg,
  });

}

class GroupApiResponse {
  final int id;
  final String name;
  final String latinName;

  GroupApiResponse({
    required this.id,
    required this.name,
    required this.latinName,
  });

}

class StaticContentApiResponse {
  final String title;
  final String subtitle;
  final String description;
  final String chordImg;

  StaticContentApiResponse({
    required this.title,
    required this.subtitle,
    required this.description,
    required this.chordImg,
  });

}
