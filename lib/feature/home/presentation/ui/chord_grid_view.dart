import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mrchord_app/feature/home/presentation/bloc/chord_bloc.dart';
import 'package:mrchord_app/feature/home/presentation/bloc/chord_state.dart';
import 'package:mrchord_app/feature/home/presentation/ui/tile_chord_view.dart';

class ChordGridView extends StatelessWidget {
  const ChordGridView({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder <ChordBloc, ChordState>(
        builder: (context, state) {
          final createChordStateStatus = state.createChordStateStatus;
          if (createChordStateStatus is CreateChordStateLoading) {
            return Container(
                padding: const EdgeInsets.all( 16.0,
                ),
                child: const Center(
                  child: CircularProgressIndicator(),
                ));
          }

          if (createChordStateStatus is CreateChordStateSuccess) {
            final chordList = createChordStateStatus.chordUiList;
            return GridView.builder(
                itemCount: chordList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2
                ),
                itemBuilder: (context, index) {
                  return TileChordView(
                    chordList[index]
                  );
                }
            );
          }

          return Container(
            alignment: Alignment.center,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              vertical: 32.0,
              horizontal: 16.0
            ),
            child: const Text(
              "Lista vacía",
              style: TextStyle(
                  fontSize: 16.0, fontWeight: FontWeight.normal),
            ),
          );
        });
  }
}

