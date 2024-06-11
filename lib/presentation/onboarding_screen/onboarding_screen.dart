import 'bloc/onboarding_bloc.dart';
import 'models/onboarding_model.dart';
import 'package:flutter/material.dart';
import 'package:Roptia_Mobile/core/app_export.dart';
import 'package:Roptia_Mobile/widgets/custom_elevated_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingBloc>(
      create: (context) => OnboardingBloc(OnboardingState(
        onboardingModelObj: OnboardingModel(),
      ))
        ..add(OnboardingInitialEvent()),
      child: OnboardingScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<OnboardingBloc, OnboardingState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: appTheme.black900.withOpacity(0.8),
            body: Container(
              width: mediaQueryData.size.width,
              height: mediaQueryData.size.height,
              decoration: BoxDecoration(
                color: appTheme.black900.withOpacity(0.8),
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgOnboarding,
                  ),
                  fit: BoxFit.cover,
                  opacity: 0.2,
                ),
              ),
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 18.h,
                  vertical: 40.v,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage39,
                      height: 149.v,
                      width: 151.h,
                    ),
                    SizedBox(height: 165.v),
                    // Spacer(),
                    CustomImageView(
                      imagePath: ImageConstant.imgSearch,
                      height: 45.v,
                      // width: 85.h,
                    ),
                    SizedBox(height: 3.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 1.v),
                          child: Text(
                            "lbl_5000".tr,
                            style: theme.textTheme.labelMedium,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: Text(
                            "msg_businesses_use_roptia".tr,
                            style: CustomTextStyles.bodySmallOnPrimary,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 21.v),
                    Container(
                      width: 275.h,
                      margin: EdgeInsets.only(
                        left: 24.h,
                        right: 23.h,
                      ),
                      child: Text(
                        "msg_one_stop_shop_for".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.headlineSmallOnPrimary,
                      ),
                    ),
                    SizedBox(height: 12.v),
                    SizedBox(
                      width: 322.h,
                      child: Text(
                        "msg_we_connect_empower".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.labelLargeOnPrimary.copyWith(
                          height: 1.33,
                        ),
                      ),
                    ),
                    SizedBox(height: 24.v),
                    CustomElevatedButton(
                      text: "lbl_create_account".tr,
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          AppRoutes.signUpScreen,
                        );
                      },
                    ),
                    SizedBox(height: 19.v),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          AppRoutes.loginScreen,
                        );
                      },
                      child: Text(
                        "lbl_login_to_roptia".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
