import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../models/sign_up_model.dart';
import '/core/app_export.dart';
part 'sign_up_event.dart';
part 'sign_up_state.dart';

/// A bloc that manages the state of a SignUp according to the event that is dispatched to it.
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc(SignUpState initialState) : super(initialState) {
    on<SignUpInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
    on<ChangePasswordVisibilityEvent1>(_changePasswordVisibility1);
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<SignUpState> emit,
  ) {
    emit(state.copyWith(
      isShowPassword: event.value,
    ));
  }

  _changePasswordVisibility1(
    ChangePasswordVisibilityEvent1 event,
    Emitter<SignUpState> emit,
  ) {
    emit(state.copyWith(
      isShowPassword1: event.value,
    ));
  }

  _onInitialize(
    SignUpInitialEvent event,
    Emitter<SignUpState> emit,
  ) async {
    emit(state.copyWith(
      firstNameSectionController: TextEditingController(),
      lastNameSectionController: TextEditingController(),
      emailAddressSectionController: TextEditingController(),
      passwordSectionController: TextEditingController(),
      confirmPasswordSectionController: TextEditingController(),
      streetSectionController: TextEditingController(),
      citySectionController: TextEditingController(),
      postcodeSectionController: TextEditingController(),
      isShowPassword: true,
      isShowPassword1: true,
    ));
  }
}
