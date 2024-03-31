import 'package:flutter/material.dart';
import 'package:mrchord_app/feature/home/domain/entity/chord.dart';
import 'package:mrchord_app/feature/home/presentation/ui/tile_chord_view.dart';

class ChordGridView extends StatelessWidget {
  final List<Chord> _chords;
  const ChordGridView(this._chords, {Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: _chords.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2
        ),
        itemBuilder: (context, index) {
          return TileChordView(
              _chords[index]
          );
        }
    );
  }
}