import 'package:equatable/equatable.dart';
import 'package:mrchord_app/feature/home/domain/entity/chord.dart';
import 'package:mrchord_app/feature/home/domain/entity/group.dart';

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