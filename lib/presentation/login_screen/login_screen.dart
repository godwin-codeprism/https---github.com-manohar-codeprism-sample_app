import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';

import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../theme/app_decoration.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/login_bloc.dart';
import 'models/login_model.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (context) => LoginBloc(LoginState(
        loginModelObj: LoginModel(),
      ))
        ..add(LoginInitialEvent()),
      child: LoginScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                _buildLoginFrame(context),
                SizedBox(height: 43.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 18.h),
                    child: Text(
                      "lbl_login".tr,
                      style: theme.textTheme.headlineSmall,
                    ),
                  ),
                ),
                SizedBox(height: 9.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 18.h),
                    child: Text(
                      "msg_login_to_your_roptia".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                ),
                SizedBox(height: 31.v),
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
                Padding(
                  padding: EdgeInsets.only(
                    left: 19.h,
                    right: 21.h,
                  ),
                  child: BlocSelector<LoginBloc, LoginState,
                      TextEditingController?>(
                    selector: (state) => state.emailController,
                    builder: (context, emailController) {
                      return CustomTextFormField(
                        controller: emailController,
                        hintText: "msg_enter_email_address".tr,
                        hintStyle: theme.textTheme.bodyMedium!,
                        textInputType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null ||
                              (!isValidEmail(value, isRequired: true))) {
                            return "err_msg_please_enter_valid_email".tr;
                          }
                          return null;
                        },
                      );
                    },
                  ),
                ),
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
                Padding(
                  padding: EdgeInsets.only(
                    left: 19.h,
                    right: 21.h,
                  ),
                  child: BlocBuilder<LoginBloc, LoginState>(
                    builder: (context, state) {
                      return CustomTextFormField(
                        controller: state.passwordController,
                        hintText: "lbl_enter_password".tr,
                        hintStyle: theme.textTheme.bodyMedium!,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.visiblePassword,
                        suffix: InkWell(
                          onTap: () {
                            context.read<LoginBloc>().add(
                                ChangePasswordVisibilityEvent(
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
                ),
                SizedBox(height: 9.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 21.h),
                    child: Text(
                      "msg_forgot_password".tr,
                      style: CustomTextStyles.bodyMediumPrimary.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25.v),
                CustomElevatedButton(
                  text: "lbl_log_in2".tr,
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
                  },
                  margin: EdgeInsets.only(
                    left: 19.h,
                    right: 21.h,
                  ),
                ),
                SizedBox(height: 14.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_don_t_have_a".tr,
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
                          text: "lbl_create_now".tr,
                          style: theme.textTheme.labelLarge,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushNamed(
                                  context, AppRoutes.signUpScreen);
                            }),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 24.v),
                _buildOrDivider(context),
                SizedBox(height: 18.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgFrame9,
                      height: 55.v,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgFrame10,
                      height: 55.v,
                    ),
                  ],
                ),
                SizedBox(height: 35.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginFrame(BuildContext context) {
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
  Widget _buildOrDivider(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
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
