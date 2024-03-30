class BasicApiDto {
  final int id;
  final int groupId;
  final String note;
  final String latinNote;
  final String chordImg;

  BasicApiDto({
    required this.id,
    required this.groupId,
    required this.note,
    required this.latinNote,
    required this.chordImg,
  });

  factory BasicApiDto.fromJson(Map<String, dynamic> json) =>
      BasicApiDto(
        id: json['id'],
        groupId: json['groupId'],
        note: json['note'],
        latinNote: json['latinNote'],
        chordImg: json['chordImg'],
      );
}