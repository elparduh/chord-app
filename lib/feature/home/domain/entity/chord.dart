import 'package:equatable/equatable.dart';

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