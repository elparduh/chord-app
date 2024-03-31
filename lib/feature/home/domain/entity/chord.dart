import 'package:equatable/equatable.dart';
import 'package:mrchord_app/feature/home/presentation/uimodel/chord_ui.dart';

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

extension ChordListExt on List<Chord> {
  List<ChordUi> toChordUiList() =>
      map<ChordUi>((e) => e.toChordUi()).toList();
}

extension ChordExt on Chord {
  toChordUi() => ChordUi(
      id: id,
      groupId: groupId,
      note: note,
      latinNote: latinNote,
      chordImg: chordImg
  );
}