import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mrchord_app/feature/home/data/datasource/home_remote_datasource.dart';
import 'package:mrchord_app/feature/home/data/repository/home_repository_impl.dart';
import 'package:mrchord_app/feature/home/domain/usecase/get_home_usecase.dart';
import 'package:mrchord_app/feature/home/presentation/bloc/chord_bloc.dart';
import 'package:mrchord_app/feature/home/presentation/ui/home_screen.dart';

import 'injection_container.dart';
class MrChordApp extends StatelessWidget {
  const MrChordApp({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = ChordBloc(sl.get<GetHomeUseCase>());
    return BlocProvider(
      create: (_) => bloc,
      child: MaterialApp(
        title: 'Biblioteca de acordes',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
          useMaterial3: true,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}