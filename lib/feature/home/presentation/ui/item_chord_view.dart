import 'package:flutter/material.dart';
import 'package:mrchord_app/feature/home/domain/entity/chord.dart';

class ItemChordView extends StatelessWidget {
  final Chord _chord;
  const ItemChordView(this._chord, {Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 170,
        child: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(4.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Image.network(
                    _chord.chordImg
                ),
              ),
              Flexible(
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Cifrado americano: ${_chord.note}',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Nota: ${_chord.latinNote}',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}