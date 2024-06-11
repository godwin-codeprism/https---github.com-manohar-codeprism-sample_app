import 'package:Roptia_Mobile/presentation/onboarding_screen/onboarding_screen.dart';

import 'bloc/splash_bloc.dart';
import 'models/splash_model.dart';
import 'package:flutter/material.dart';
import 'package:Roptia_Mobile/core/app_export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashBloc>(
      create: (context) => SplashBloc(SplashState(
        splashModelObj: SplashModel(),
      ))
        ..add(SplashInitialEvent()),
      child: SplashScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocListener(
      bloc: BlocProvider.of<SplashBloc>(context),
      listener: (context, state) {
        if (state is SplashCompleted) {
          NavigatorService.navigatorKey.currentState!.pushReplacementNamed(
            AppRoutes.onboardingScreen,
          );
        }
      },
      child: SafeArea(
        child: Scaffold(
          body: TweenAnimationBuilder<double>(
            duration: Duration(seconds: 1),
            tween: Tween<double>(begin: -1, end: 0),
            builder: (context, value, child) {
              return Transform.translate(
                offset: Offset(0, value * mediaQueryData.size.height),
                child: Align(
                  alignment: Alignment(0, value + 1),
                  child: Transform.scale(
                    scale: 1.0 - value.abs() * 0.3, // Adjust the scale factor
                    child: Container(
                      // width: double.maxFinite,
                      padding: EdgeInsets.symmetric(horizontal: 113.h),
                      child: Center(
                        child: CustomImageView(
                          imagePath: ImageConstant.imgArtboard63,
                          height: 40.v,
                          width: 126.h,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
