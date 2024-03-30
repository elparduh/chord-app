class StaticContentApiDto {
  final String title;
  final String subtitle;
  final String description;
  final String chordImg;

  StaticContentApiDto({
    required this.title,
    required this.subtitle,
    required this.description,
    required this.chordImg,
  });

  factory StaticContentApiDto.fromJson(Map<String, dynamic> json) =>
      StaticContentApiDto(
        title: json['title'],
        subtitle: json['subtitle'],
        description: json['description'],
        chordImg: json['chordImg'],
      );
}