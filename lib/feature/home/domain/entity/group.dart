import 'package:equatable/equatable.dart';

class Group extends Equatable {
  final int id;
  final String name;
  final String latinName;

  const Group({
    required this.id,
    required this.name,
    required this.latinName,
  });

  @override
  List<Object?> get props => [
    id,
    name,
    latinName
  ];
}