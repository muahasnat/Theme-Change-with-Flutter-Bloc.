import 'package:change_thene_with_block/Pages/app_theme.dart';
import 'package:change_thene_with_block/bloc/app_theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeChange extends StatefulWidget {
  const ThemeChange({Key? key}) : super(key: key);

  @override
  State<ThemeChange> createState() => _ThemeChangeState();
}

class _ThemeChangeState extends State<ThemeChange> {
  bool _isThemeSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Theme Change with block"),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Theme Change "),
                  Switch(
                      value: _isThemeSwitch,
                      onChanged: (val) {
                        _isThemeSwitch = val;
                        setState(() {});
                        if (_isThemeSwitch) {
                          BlocProvider.of<AppThemeBloc>(context)
                              .add(AppThemeEvent(theme: AppTheme.darkTheme));
                        } else {
                          BlocProvider.of<AppThemeBloc>(context)
                              .add(AppThemeEvent(theme: AppTheme.lightTheme));
                        }
                      })
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
