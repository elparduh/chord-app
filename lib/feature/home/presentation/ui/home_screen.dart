import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mrchord_app/feature/home/presentation/bloc/chord_bloc.dart';
import 'package:mrchord_app/feature/home/presentation/ui/chord_grid_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<ChordBloc>().onLoadHome();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'Biblioteca de acordes'
        ),
        backgroundColor: Colors.lightBlue,
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(16),
          child: const ChordGridView(),
        ),
      )
    );
  }
}