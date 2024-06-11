// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [chats_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ChatsModel extends Equatable {
  ChatsModel() {}

  ChatsModel copyWith() {
    return ChatsModel();
  }

  @override
  List<Object?> get props => [];
}
