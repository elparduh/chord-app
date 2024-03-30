class GroupApiDto {
  final int id;
  final String name;
  final String latinName;

  GroupApiDto({
    required this.id,
    required this.name,
    required this.latinName,
  });

  factory GroupApiDto.fromJson(Map<String, dynamic> json) =>
      GroupApiDto(
        id: json['id'],
        name: json['name'],
        latinName: json['latinName'],
      );
}