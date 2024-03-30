import 'package:equatable/equatable.dart';

class HomeScreen extends Equatable {
  final String title;
  final String subtitle;
  final String description;
  final String chordImg;
  final List<Group> groups;
  final List<Chord> chords;

  const HomeScreen({
    required this.title,
    required this.subtitle,
    required this.description,
    required this.chordImg,
    required this.groups,
    required this.chords,
  });

  @override
  List<Object?> get props => [
    title,
    subtitle,
    description,
    chordImg,
    groups,
    chords,
  ];
}

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

class Chord extends Equatable {
  final int id;
  final int groupId;
  final String note;
  final String latinNote;
  final String chordImg;

  const Chord({
    required this.id,
    required this.groupId,
    required this.note,
    required this.latinNote,
    required this.chordImg,
  });

  @override
  List<Object?> get props => [
    id,
    groupId,
    note,
    latinNote,
    chordImg,
  ];
}