import 'package:Roptia_Mobile/theme/app_decoration.dart';
import 'package:flutter/gestures.dart';

import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/sign_up_bloc.dart';
import 'models/sign_up_model.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignUpBloc>(
      create: (context) => SignUpBloc(SignUpState(
        signUpModelObj: SignUpModel(),
      ))
        ..add(SignUpInitialEvent()),
      child: SignUpScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: true,
      body: Form(
        key: _formKey,
        child: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildFrame(context),
                SizedBox(height: 17.v),
                _buildCreateAccountSection(context),
                SizedBox(height: 27.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 19.h),
                    child: Text(
                      "lbl_first_name".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ),
                SizedBox(height: 9.v),
                _buildFirstNameSection(context),
                SizedBox(height: 12.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 19.h),
                    child: Text(
                      "lbl_last_name".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ),
                SizedBox(height: 9.v),
                _buildLastNameSection(context),
                SizedBox(height: 12.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 19.h),
                    child: Text(
                      "lbl_email_address".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ),
                SizedBox(height: 9.v),
                _buildEmailAddressSection(context),
                SizedBox(height: 12.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 19.h),
                    child: Text(
                      "lbl_password".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ),
                SizedBox(height: 9.v),
                _buildPasswordSection(context),
                SizedBox(height: 12.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 19.h),
                    child: Text(
                      "msg_confirm_password".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ),
                SizedBox(height: 9.v),
                _buildConfirmPasswordSection(context),
                SizedBox(height: 12.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 19.h),
                    child: Text(
                      "lbl_street".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ),
                SizedBox(height: 9.v),
                _buildStreetSection(context),
                SizedBox(height: 13.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 19.h),
                    child: Text(
                      "lbl_city".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ),
                SizedBox(height: 8.v),
                _buildCitySection(context),
                SizedBox(height: 12.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 19.h),
                    child: Text(
                      "lbl_postcode".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ),
                SizedBox(height: 9.v),
                _buildPostcodeSection(context),
                SizedBox(height: 17.v),
                Container(
                  width: 321.h,
                  margin: EdgeInsets.only(
                    right: 20.h,
                    left: 10.h,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "msg_by_creating_an_account2".tr,
                          style: CustomTextStyles.labelLargeErrorContainer,
                        ),
                        TextSpan(
                          text: "msg_terms_conditions".tr,
                          style: theme.textTheme.labelLarge,
                        ),
                        TextSpan(
                          text: "lbl_and".tr,
                          style: CustomTextStyles.labelLargeErrorContainer,
                        ),
                        TextSpan(
                          text: "lbl_privacy_policy".tr,
                          style: theme.textTheme.labelLarge,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 22.v),
                _buildCreateAccountButtonSection(context),
                SizedBox(height: 12.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 58.h),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl_already".tr,
                            style: CustomTextStyles.bodySmallGray600_1,
                          ),
                          TextSpan(
                            text: "lbl_have_a".tr,
                            style: CustomTextStyles.bodySmallGray600_1,
                          ),
                          TextSpan(
                            text: "lbl_n".tr,
                            style: CustomTextStyles.bodySmallGray600_1,
                          ),
                          TextSpan(
                            text: "lbl_account".tr,
                            style: CustomTextStyles.bodySmallGray600_1,
                          ),
                          TextSpan(
                              text: "lbl_login_now".tr,
                              style: theme.textTheme.labelLarge,
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.pushNamed(
                                      context, AppRoutes.loginScreen);
                                }),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                SizedBox(height: 20.v),
                _buildOrDividerSection(context),
                SizedBox(height: 18.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgFrame9,
                      height: 58.v,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgFrame10,
                      height: 58.v,
                    ),
                  ],
                ),
                SizedBox(height: 35.v),
              ],
            ),
          ),
        ),
      ),
    ));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 117.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.fillOnPrimary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 19.v),
          CustomImageView(
            imagePath: ImageConstant.imgArtboard63,
            height: 40.v,
            width: 126.h,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCreateAccountSection(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      color: appTheme.black900.withOpacity(0.01),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18.0, top: 28),
            child: Text(
              "lbl_create_account".tr,
              style: theme.textTheme.headlineSmall,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, top: 10),
            child: Text(
              "msg_please_enter_your".tr,
              style: theme.textTheme.bodyLarge,
            ),
          ),
          SizedBox(height: 4.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFirstNameSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 19.h,
        right: 20.h,
      ),
      child: BlocSelector<SignUpBloc, SignUpState, TextEditingController?>(
        selector: (state) => state.firstNameSectionController,
        builder: (context, firstNameSectionController) {
          return CustomTextFormField(
            controller: firstNameSectionController,
            hintText: "msg_enter_first_name".tr,
            hintStyle: theme.textTheme.bodyMedium!,
            validator: (value) {
              if (!isText(value)) {
                return "err_msg_please_enter_valid_text".tr;
              }
              return null;
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildLastNameSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 19.h,
        right: 20.h,
      ),
      child: BlocSelector<SignUpBloc, SignUpState, TextEditingController?>(
        selector: (state) => state.lastNameSectionController,
        builder: (context, lastNameSectionController) {
          return CustomTextFormField(
            controller: lastNameSectionController,
            hintText: "lbl_enter_last_name".tr,
            hintStyle: theme.textTheme.bodyMedium!,
            validator: (value) {
              if (!isText(value)) {
                return "err_msg_please_enter_valid_text".tr;
              }
              return null;
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailAddressSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 19.h,
        right: 20.h,
      ),
      child: BlocSelector<SignUpBloc, SignUpState, TextEditingController?>(
        selector: (state) => state.emailAddressSectionController,
        builder: (context, emailAddressSectionController) {
          return CustomTextFormField(
            controller: emailAddressSectionController,
            hintText: "msg_enter_email_address".tr,
            hintStyle: theme.textTheme.bodyMedium!,
            textInputType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || (!isValidEmail(value, isRequired: true))) {
                return "err_msg_please_enter_valid_email".tr;
              }
              return null;
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 19.h,
        right: 20.h,
      ),
      child: BlocBuilder<SignUpBloc, SignUpState>(
        builder: (context, state) {
          return CustomTextFormField(
            controller: state.passwordSectionController,
            hintText: "lbl_enter_password".tr,
            hintStyle: theme.textTheme.bodyMedium!,
            textInputType: TextInputType.visiblePassword,
            suffix: InkWell(
              onTap: () {
                context.read<SignUpBloc>().add(ChangePasswordVisibilityEvent(
                    value: !state.isShowPassword));
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(12.h, 12.v, 16.h, 12.v),
                child: CustomImageView(
                  imagePath: state.isShowPassword
                      ? ImageConstant.imgEyeHidden
                      : ImageConstant.imgEyeVisible,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 48.v,
            ),
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: state.isShowPassword,
            contentPadding: EdgeInsets.only(
              left: 16.h,
              top: 13.v,
              bottom: 13.v,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmPasswordSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 19.h,
        right: 20.h,
      ),
      child: BlocBuilder<SignUpBloc, SignUpState>(
        builder: (context, state) {
          return CustomTextFormField(
            controller: state.confirmPasswordSectionController,
            hintText: "lbl_enter_password".tr,
            hintStyle: theme.textTheme.bodyMedium!,
            textInputType: TextInputType.visiblePassword,
            suffix: InkWell(
              onTap: () {
                context.read<SignUpBloc>().add(ChangePasswordVisibilityEvent1(
                    value: !state.isShowPassword1));
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(12.h, 12.v, 16.h, 12.v),
                child: CustomImageView(
                  imagePath: state.isShowPassword1
                      ? ImageConstant.imgEyeHidden
                      : ImageConstant.imgEyeVisible,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 48.v,
            ),
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: state.isShowPassword1,
            contentPadding: EdgeInsets.only(
              left: 16.h,
              top: 13.v,
              bottom: 13.v,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildStreetSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 19.h,
        right: 20.h,
      ),
      child: BlocSelector<SignUpBloc, SignUpState, TextEditingController?>(
        selector: (state) => state.streetSectionController,
        builder: (context, streetSectionController) {
          return CustomTextFormField(
            controller: streetSectionController,
            hintText: "lbl_enter_street".tr,
            hintStyle: theme.textTheme.bodyMedium!,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildCitySection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 19.h,
        right: 20.h,
      ),
      child: BlocSelector<SignUpBloc, SignUpState, TextEditingController?>(
        selector: (state) => state.citySectionController,
        builder: (context, citySectionController) {
          return CustomTextFormField(
            controller: citySectionController,
            hintText: "lbl_enter_city".tr,
            hintStyle: theme.textTheme.bodyMedium!,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPostcodeSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 19.h,
        right: 20.h,
      ),
      child: BlocSelector<SignUpBloc, SignUpState, TextEditingController?>(
        selector: (state) => state.postcodeSectionController,
        builder: (context, postcodeSectionController) {
          return CustomTextFormField(
            controller: postcodeSectionController,
            hintText: "lbl_enter_postcode".tr,
            hintStyle: theme.textTheme.bodyMedium!,
            textInputAction: TextInputAction.done,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildCreateAccountButtonSection(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_create_account2".tr,
      margin: EdgeInsets.only(
        left: 19.h,
        right: 20.h,
      ),
    );
  }

  /// Section Widget
  Widget _buildOrDividerSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 19.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 10.v,
              bottom: 9.v,
            ),
            child: SizedBox(
              width: 90.h,
              child: Divider(),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text(
              "msg_or_continue_with".tr,
              style: CustomTextStyles.bodyMediumGray600,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10.v,
              bottom: 9.v,
            ),
            child: SizedBox(
              width: 98.h,
              child: Divider(
                indent: 8.h,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
