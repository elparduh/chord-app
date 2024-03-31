import 'package:flutter/material.dart';
import 'package:mrchord_app/feature/detail/ui/chord_image_view.dart';
import 'package:mrchord_app/feature/home/presentation/uimodel/chord_ui.dart';

class ChordDetailScreen extends StatelessWidget {
  final ChordUi _chordUi;
  const ChordDetailScreen(this._chordUi, {Key? key}): super(key: key);

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
                  _chordUi.chordImg
              ),
              Text(
                'Cifrado: ${_chordUi.note}',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              Text(
                'Notación Latina: ${_chordUi.latinNote}',
                style: Theme.of(context).textTheme.labelMedium,
              )
            ],
          ),
        ),
      ),
    );
  }
}