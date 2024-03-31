import 'package:flutter/material.dart';
import 'package:mrchord_app/feature/detail/ui/chord_image_view.dart';
import 'package:mrchord_app/feature/home/domain/entity/chord.dart';

class ChordDetailScreen extends StatelessWidget {
  final Chord _chord;
  const ChordDetailScreen(this._chord, {Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            "Detalle de acorde"
        ),
        backgroundColor: Colors.lightBlue,
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: AlignmentDirectional.center,
          child: Column(
            children: [
              ChordImageView(
                  _chord.chordImg
              ),
              Text(
                '${_chord.note} (${_chord.latinNote})',
                style: Theme.of(context).textTheme.headlineMedium,
              )
            ],
          ),
        ),
      ),
    );
  }
}