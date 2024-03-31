import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mrchord_app/feature/home/domain/entity/chord.dart';
import 'package:mrchord_app/feature/home/domain/usecase/get_home_usecase.dart';
import 'package:mrchord_app/feature/home/presentation/bloc/chord_event.dart';
import 'package:mrchord_app/feature/home/presentation/bloc/chord_state.dart';

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

  onLoadHome() {
    add(LoadHomeEvent());
  }
}