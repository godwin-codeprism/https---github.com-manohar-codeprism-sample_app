import 'package:Roptia_Mobile/presentation/home_page/home_page.dart';
import 'package:Roptia_Mobile/presentation/login_screen/login_screen.dart';
import 'package:flutter/material.dart';

import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/home_container_screen/home_container_screen.dart';
import '../presentation/onboarding_screen/onboarding_screen.dart';
import '../presentation/sign_up_screen/sign_up_screen.dart';
import '../presentation/splash_screen/splash_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onboardingScreen = '/onboarding_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String loginScreen = '/login_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String homeContainerScreen = '/home_container_screen';

  static const String homePage = '/home_page';

  static const String searchResultTabContainerPage =
      '/search_result_tab_container_page';

  static const String chatsPage = '/chats_page';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        initialRoute: SplashScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        splashScreen: SplashScreen.builder,
        onboardingScreen: OnboardingScreen.builder,
        signUpScreen: SignUpScreen.builder,
        loginScreen: LoginScreen.builder,
        homeContainerScreen: HomeContainerScreen.builder,
      };
}
