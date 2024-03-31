import 'package:equatable/equatable.dart';
import 'package:mrchord_app/feature/home/domain/entity/chord.dart';
import 'package:mrchord_app/feature/home/presentation/uimodel/chord_ui.dart';

sealed class ChordEvent {}

class LoadHomeEvent extends ChordEvent {
  LoadHomeEvent();
}

class ChordState extends Equatable {
  final List<Chord> chordList;
  final CreateChordStateStatus createChordStateStatus;

  const ChordState({
    required this.chordList,
    required this.createChordStateStatus
  });

  static ChordState initial() => ChordState(
    chordList: const [],
    createChordStateStatus: CreateChordStateInitial(),
  );

  ChordState copyWith({
    List<Chord>? chordList,
    CreateChordStateStatus? createChordStateStatus,
  }) => ChordState(
      chordList: chordList ?? this.chordList,
      createChordStateStatus: createChordStateStatus ?? this.createChordStateStatus
  );

  @override
  List<Object?> get props => [chordList, createChordStateStatus];
}

final class CreateChordStateStatus extends Equatable {
  const CreateChordStateStatus();

  @override
  List<Object?> get props => [];
}

final class CreateChordStateInitial extends CreateChordStateStatus {}

final class CreateChordStateLoading extends CreateChordStateStatus {}

final class CreateChordStateSuccess extends CreateChordStateStatus {
  final List<ChordUi> chordUiList;

  const CreateChordStateSuccess( this.chordUiList);

  @override
  List<Object?> get props => [chordUiList];
}

final class CreateChordStateError extends CreateChordStateStatus {
  final String errorMessage;

  const CreateChordStateError(this.errorMessage);

  @override
  List<Object?> get props => [errorMessage];
}

class ChordBloc {

}