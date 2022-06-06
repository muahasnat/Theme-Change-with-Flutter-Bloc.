import 'package:bloc/bloc.dart';
import 'package:change_thene_with_block/Pages/app_theme.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'app_theme_event.dart';
part 'app_theme_state.dart';

// class AppThemeBloc extends Bloc<AppThemeEvent, AppThemeState> {
//   AppThemeBloc() : super(AppThemeState(theme: AppTheme.lightTheme));

//   @override
//   Stream<AppThemeState> mapEventToState(
//     AppThemeEvent event,
//   ) async* {
//     if (event is AppThemeEvent) {
//       yield AppThemeState(theme: event.theme);
//     }
//   }
// }

class AppThemeBloc extends Bloc<AppThemeEvent, AppThemeState> {
  AppThemeBloc()
      : super(AppThemeState(theme: AppTheme.lightTheme)

            // @override
            // Stream <AppThemeState> mapEventToState(AppThemeBloc())

            ) {
    on<AppThemeEvent>((
      event,
      emit,
    ) {
      // TODO: implement event handler

      // if (event is AppThemeEvent){
      //   yield AppThemeState(thene:event.theme);
      // }
    });
  }
}

// asyenc* {
//         if (event is AppThemeEvent){
//         yield AppThemeState(thene:event.theme);
//       }
//       }
