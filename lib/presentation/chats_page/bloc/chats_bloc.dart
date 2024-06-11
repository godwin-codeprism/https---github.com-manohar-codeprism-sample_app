import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:Roptia_Mobile/presentation/chats_page/models/chats_model.dart';
part 'chats_event.dart';
part 'chats_state.dart';

/// A bloc that manages the state of a Chats according to the event that is dispatched to it.
class ChatsBloc extends Bloc<ChatsEvent, ChatsState> {
  ChatsBloc(ChatsState initialState) : super(initialState) {
    on<ChatsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChatsInitialEvent event,
    Emitter<ChatsState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
  }
}
