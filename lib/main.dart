import 'package:change_thene_with_block/Pages/app_theme.dart';
import 'package:change_thene_with_block/Pages/homePage.dart';
import 'package:change_thene_with_block/bloc/app_theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppThemeBloc>(
      create: (context) => AppThemeBloc(),
      child: BlocBuilder<AppThemeBloc, AppThemeState>(
        builder: (Context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: "Theme Change With Bloc",
            theme: state.theme,
            home: ThemeChange(),
          );
        },
      ),
    );
  }
}
