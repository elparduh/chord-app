import 'package:flutter/material.dart';
import 'package:mrchord_app/feature/detail/ui/chord_detail_screen.dart';
import 'package:mrchord_app/feature/home/domain/entity/chord.dart';

class TileChordView extends StatelessWidget {
  final Chord _chord;
  const TileChordView(this._chord, {Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(4.0),
      onTap: () {
        _navigateToChordDetail(context, _chord);
      },
      child: Container(
        alignment: AlignmentDirectional.center,
        child: Column(
          children: [
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                    _chord.chordImg,
                ),
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Text(
              _chord.note,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(
              height: 8.0,
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToChordDetail(BuildContext buildContext, Chord chord) {
    Navigator.push(
        buildContext,
        MaterialPageRoute(
            builder: (buildContext) => ChordDetailScreen(chord)
        )
    );
  }
}