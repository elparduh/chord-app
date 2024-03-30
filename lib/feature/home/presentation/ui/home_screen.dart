import 'package:flutter/material.dart';
import 'package:mrchord_app/feature/home/domain/entity/chord.dart';
import 'package:mrchord_app/feature/home/presentation/ui/item_chord_view.dart';

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
      note: 'A',
      latinNote: 'La',
      chordImg: 'https://firebasestorage.googleapis.com/v0/b/mrchordapp-34f1d.appspot.com/o/A.png?alt=media&token=fdac8c12-838a-42c8-8f9d-40ae1854f412',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Biblioteca de acordes'),
        backgroundColor: Colors.lightBlue,
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: _chords.length,
          itemBuilder: (context, index) {
            return ItemChordView(_chords[index]);
          },
        ),
      )
    );
  }
}