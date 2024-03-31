import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mrchord_app/feature/home/domain/entity/chord.dart';
import 'package:mrchord_app/feature/home/domain/usecase/get_home_usecase.dart';
import 'package:mrchord_app/feature/home/presentation/uimodel/chord_ui.dart';

sealed class ChordEvent {}

class LoadHomeEvent extends ChordEvent {
  LoadHomeEvent();
}

class ChordState extends Equatable {
  final List<Chord> chordList;
  final CreateChordStateStatus createChordStateStatus;

  const ChordState(
      {required this.chordList, required this.createChordStateStatus});

  static ChordState initial() => ChordState(
        chordList: const [],
        createChordStateStatus: CreateChordStateInitial(),
      );

  ChordState copyWith({
    List<Chord>? chordList,
    CreateChordStateStatus? createChordStateStatus,
  }) =>
      ChordState(
          chordList: chordList ?? this.chordList,
          createChordStateStatus:
              createChordStateStatus ?? this.createChordStateStatus);

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

  const CreateChordStateSuccess(this.chordUiList);

  @override
  List<Object?> get props => [chordUiList];
}

final class CreateChordStateError extends CreateChordStateStatus {
  final String errorMessage;

  const CreateChordStateError(this.errorMessage);

  @override
  List<Object?> get props => [errorMessage];
}

class ChordBloc extends Bloc<ChordEvent, ChordState> {
  final GetHomeUseCase _getHomeUseCase;

  ChordBloc(this._getHomeUseCase) : super(ChordState.initial()) {
    on<LoadHomeEvent>(_onLoadHomeScreen);
  }

  _onLoadHomeScreen(LoadHomeEvent event, Emitter<ChordState> emit) async {
    emit(state.copyWith(createChordStateStatus: CreateChordStateLoading()));
    final chordList = List<Chord>.from(state.chordList);
    await _getHomeUseCase.call().then((value) {
      if (value.chords.isNotEmpty) chordList.addAll(value.chords);
      emit(state.copyWith(
          chordList: chordList,
          createChordStateStatus:
              CreateChordStateSuccess(chordList.toChordUiList())));
    }).catchError((exception) {
      emit(state.copyWith(
          createChordStateStatus: CreateChordStateError(exception.toString())));
    });
  }
}