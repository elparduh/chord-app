import 'package:equatable/equatable.dart';

class HomeScreen extends Equatable {
  final String title;
  final String subtitle;
  final String description;
  final String chordImg;
  final List<ChordsBasic> chordsBasic;

  const HomeScreen({
    required this.title,
    required this.subtitle,
    required this.description,
    required this.chordImg,
    required this.chordsBasic,
  });

  @override
  List<Object?> get props => [
    title,
    subtitle,
    description,
    chordImg,
    chordsBasic,
  ];
}

class ChordsBasic extends Equatable {
  final int id;
  final int groupId;
  final String note;
  final String latinNote;
  final String chordImg;

  const ChordsBasic({
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