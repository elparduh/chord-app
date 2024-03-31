import 'package:flutter/material.dart';
import 'package:mrchord_app/feature/detail/ui/chord_detail_screen.dart';
import 'package:mrchord_app/feature/home/domain/entity/chord.dart';
import 'package:mrchord_app/feature/home/presentation/uimodel/chord_ui.dart';

class TileChordView extends StatelessWidget {
  final ChordUi _chordUi;
  const TileChordView(this._chordUi, {Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(4.0),
      onTap: () {
        _navigateToChordDetail(context, _chordUi);
      },
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0)
        ),
        child: Container(
          alignment: AlignmentDirectional.center,
          child: Column(
            children: [
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(
                      _chordUi.chordImg,
                  ),
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Text(
                _chordUi.note,
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(
                height: 8.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _navigateToChordDetail(BuildContext buildContext, ChordUi chordUi) {
    Navigator.push(
        buildContext,
        MaterialPageRoute(
            builder: (buildContext) => ChordDetailScreen(chordUi)
        )
    );
  }
}