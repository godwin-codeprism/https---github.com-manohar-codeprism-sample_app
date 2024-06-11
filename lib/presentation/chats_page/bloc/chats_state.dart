// ignore_for_file: must_be_immutable

part of 'chats_bloc.dart';

/// Represents the state of Chats in the application.
class ChatsState extends Equatable {
  ChatsState({
    this.searchController,
    this.chatsModelObj,
  });

  TextEditingController? searchController;

  ChatsModel? chatsModelObj;

  @override
  List<Object?> get props => [
        searchController,
        chatsModelObj,
      ];

  ChatsState copyWith({
    TextEditingController? searchController,
    ChatsModel? chatsModelObj,
  }) {
    return ChatsState(
      searchController: searchController ?? this.searchController,
      chatsModelObj: chatsModelObj ?? this.chatsModelObj,
    );
  }
}
