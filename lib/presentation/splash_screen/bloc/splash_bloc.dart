import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import '/core/app_export.dart';
import 'package:Roptia_Mobile/presentation/splash_screen/models/splash_model.dart';
part 'splash_event.dart';
part 'splash_state.dart';

/// A bloc that manages the state of a Splash according to the event that is dispatched to it.
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc(SplashState initialState) : super(initialState) {
    on<SplashInitialEvent>(_onInitialize);
  }

  void _onInitialize(
    SplashInitialEvent event,
    Emitter<SplashState> emit,
  ) async {
    await Future.delayed(Duration(seconds: 2));
    emit(SplashCompleted());
  }
}
