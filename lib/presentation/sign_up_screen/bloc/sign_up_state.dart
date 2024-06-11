// ignore_for_file: must_be_immutable

part of 'sign_up_bloc.dart';

/// Represents the state of SignUp in the application.
class SignUpState extends Equatable {
  SignUpState({
    this.firstNameSectionController,
    this.lastNameSectionController,
    this.emailAddressSectionController,
    this.passwordSectionController,
    this.confirmPasswordSectionController,
    this.streetSectionController,
    this.citySectionController,
    this.postcodeSectionController,
    this.isShowPassword = true,
    this.isShowPassword1 = true,
    this.signUpModelObj,
  });

  TextEditingController? firstNameSectionController;

  TextEditingController? lastNameSectionController;

  TextEditingController? emailAddressSectionController;

  TextEditingController? passwordSectionController;

  TextEditingController? confirmPasswordSectionController;

  TextEditingController? streetSectionController;

  TextEditingController? citySectionController;

  TextEditingController? postcodeSectionController;

  SignUpModel? signUpModelObj;

  bool isShowPassword;

  bool isShowPassword1;

  @override
  List<Object?> get props => [
        firstNameSectionController,
        lastNameSectionController,
        emailAddressSectionController,
        passwordSectionController,
        confirmPasswordSectionController,
        streetSectionController,
        citySectionController,
        postcodeSectionController,
        isShowPassword,
        isShowPassword1,
        signUpModelObj,
      ];

  SignUpState copyWith({
    TextEditingController? firstNameSectionController,
    TextEditingController? lastNameSectionController,
    TextEditingController? emailAddressSectionController,
    TextEditingController? passwordSectionController,
    TextEditingController? confirmPasswordSectionController,
    TextEditingController? streetSectionController,
    TextEditingController? citySectionController,
    TextEditingController? postcodeSectionController,
    bool? isShowPassword,
    bool? isShowPassword1,
    SignUpModel? signUpModelObj,
  }) {
    return SignUpState(
      firstNameSectionController:
          firstNameSectionController ?? this.firstNameSectionController,
      lastNameSectionController:
          lastNameSectionController ?? this.lastNameSectionController,
      emailAddressSectionController:
          emailAddressSectionController ?? this.emailAddressSectionController,
      passwordSectionController:
          passwordSectionController ?? this.passwordSectionController,
      confirmPasswordSectionController: confirmPasswordSectionController ??
          this.confirmPasswordSectionController,
      streetSectionController:
          streetSectionController ?? this.streetSectionController,
      citySectionController:
          citySectionController ?? this.citySectionController,
      postcodeSectionController:
          postcodeSectionController ?? this.postcodeSectionController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isShowPassword1: isShowPassword1 ?? this.isShowPassword1,
      signUpModelObj: signUpModelObj ?? this.signUpModelObj,
    );
  }
}
