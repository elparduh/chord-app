import 'package:flutter/material.dart';

class ChordImageView extends StatelessWidget {
  final String _coverUrl;
  const ChordImageView(this._coverUrl, {Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0, bottom: 20.0),
      width: 260,
      child: Image.network(
          _coverUrl
      ),
    );
  }
}