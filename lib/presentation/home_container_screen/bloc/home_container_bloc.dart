import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../models/home_container_model.dart';
import '/core/app_export.dart';
import 'package:Roptia_Mobile/presentation/home_container_screen/models/home_container_model.dart';
part 'home_container_event.dart';
part 'home_container_state.dart';

/// A bloc that manages the state of a HomeContainer according to the event that is dispatched to it.
class HomeContainerBloc extends Bloc<HomeContainerEvent, HomeContainerState> {
  HomeContainerBloc(HomeContainerState initialState) : super(initialState) {
    on<HomeContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomeContainerInitialEvent event,
    Emitter<HomeContainerState> emit,
  ) async {}
}
