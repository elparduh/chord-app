import 'package:flutter/material.dart';
import 'package:mrchord_app/app/app.dart';
import 'package:mrchord_app/app/injection_container.dart';

void main() async {
  await init();
  runApp(const MrChordApp());
}