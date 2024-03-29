class HomeApiResponse {
  final HomeScreen homeScreen;

  HomeApiResponse({
    required this.homeScreen,
  });

}

class HomeScreen {
  final StaticContent staticContent;
  final Chords chords;

  HomeScreen({
    required this.staticContent,
    required this.chords,
  });

}

class Chords {
  final List<Group> groups;
  final List<Basic> basics;

  Chords({
    required this.groups,
    required this.basics,
  });

}

class Basic {
  final int id;
  final int groupId;
  final String note;
  final String latinNote;
  final String chordImg;

  Basic({
    required this.id,
    required this.groupId,
    required this.note,
    required this.latinNote,
    required this.chordImg,
  });

}

class Group {
  final int id;
  final String name;
  final String latinName;

  Group({
    required this.id,
    required this.name,
    required this.latinName,
  });

}

class StaticContent {
  final String title;
  final String subtitle;
  final String description;
  final String chordImg;

  StaticContent({
    required this.title,
    required this.subtitle,
    required this.description,
    required this.chordImg,
  });

}
