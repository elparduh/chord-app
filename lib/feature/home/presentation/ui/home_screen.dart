import 'package:flutter/material.dart';
import 'package:mrchord_app/feature/home/domain/entity/chord.dart';
import 'package:mrchord_app/feature/home/presentation/ui/tile_chord_view.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Chord> _chords = [
    const Chord(
        id: 1,
        groupId: 1,
        note: 'A',
        latinNote: 'La',
        chordImg: 'https://firebasestorage.googleapis.com/v0/b/mrchordapp-34f1d.appspot.com/o/A.png?alt=media&token=fdac8c12-838a-42c8-8f9d-40ae1854f412',
    ),
    const Chord(
      id: 2,
      groupId: 1,
      note: 'A7',
      latinNote: 'La Séptima',
      chordImg: 'https://firebasestorage.googleapis.com/v0/b/mrchordapp-34f1d.appspot.com/o/A7.png?alt=media&token=84d13244-911a-4a6c-aab8-d041651c5c0f',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Biblioteca de acordes'),
        backgroundColor: Colors.lightBlue,
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(16),
          child: GridView.builder(
              itemCount: _chords.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2
              ),
              itemBuilder: (context, index) {
                return TileChordView(
                    _chords[index]
                );
              }
          ),
        ),
      )
    );
  }
}