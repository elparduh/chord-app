class HomeApiResponse {
  final HomeScreenApiResponse homeScreen;

  HomeApiResponse({
    required this.homeScreen,
  });

  factory HomeApiResponse.fromJson(Map<String, dynamic> json) =>
      HomeApiResponse(
        homeScreen: HomeScreenApiResponse.fromJson(json["homeScreen"]),
      );
}

class HomeScreenApiResponse {
  final StaticContentApiResponse staticContent;
  final ChordsApiResponse chords;

  HomeScreenApiResponse({
    required this.staticContent,
    required this.chords,
  });

  factory HomeScreenApiResponse.fromJson(Map<String, dynamic> json) =>
      HomeScreenApiResponse(
        staticContent: StaticContentApiResponse.fromJson(json["staticContent"]),
        chords: ChordsApiResponse.fromJson(json["chords"]),
      );
}

class ChordsApiResponse {
  final List<GroupApiResponse> groups;
  final List<BasicApiResponse> basics;

  ChordsApiResponse({
    required this.groups,
    required this.basics,
  });

  factory ChordsApiResponse.fromJson(Map<String, dynamic> json) =>
      ChordsApiResponse(
        groups: List<GroupApiResponse>.from(
            json["groups"].map((x) => GroupApiResponse.fromJson(x))
        ),
        basics: List<BasicApiResponse>.from(
            json["basics"].map((x) => BasicApiResponse.fromJson(x))
        ),
  );
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

  factory BasicApiResponse.fromJson(Map<String, dynamic> json) =>
      BasicApiResponse(
        id: json["id"],
        groupId: json["groupId"],
        note: json["note"],
        latinNote: json["latinNote"],
        chordImg: json["chordImg"],
      );
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

  factory GroupApiResponse.fromJson(Map<String, dynamic> json) =>
      GroupApiResponse(
        id: json["id"],
        name: json["name"],
        latinName: json["latinName"],
      );
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

  factory StaticContentApiResponse.fromJson(Map<String, dynamic> json) =>
      StaticContentApiResponse(
        title: json["title"],
        subtitle: json["subtitle"],
        description: json["description"],
        chordImg: json["chordImg"],
      );
}
