import 'package:Roptia_Mobile/theme/app_decoration.dart';
import 'package:flutter/services.dart';

import '../chats_page/chats_page.dart';
import '../search_result_tab_container_page/search_result_tab_container_page.dart';
import 'bloc/home_container_bloc.dart';
import 'models/home_container_model.dart';
import 'package:flutter/material.dart';
import 'package:Roptia_Mobile/core/app_export.dart';
import 'package:Roptia_Mobile/presentation/home_page/home_page.dart';
import 'package:Roptia_Mobile/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class HomeContainerScreen extends StatelessWidget {
  HomeContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeContainerBloc>(
        create: (context) => HomeContainerBloc(
            HomeContainerState(homeContainerModelObj: HomeContainerModel()))
          ..add(HomeContainerInitialEvent()),
        child: HomeContainerScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: theme.colorScheme.primary));
    return BlocBuilder<HomeContainerBloc, HomeContainerState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Navigator(
                  key: navigatorKey,
                  initialRoute: AppRoutes.initialRoute,
                  onGenerateRoute: (routeSetting) => PageRouteBuilder(
                      pageBuilder: (ctx, ani, ani1) =>
                          getCurrentPage(context, routeSetting.name!),
                      transitionDuration: Duration(seconds: 0))),
              bottomNavigationBar: _buildBottomBar(context)));
    });
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Chat:
        return AppRoutes.chatsPage;
      case BottomBarEnum.Search:
        return AppRoutes.searchResultTabContainerPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage.builder(context);
      case AppRoutes.chatsPage:
        return ChatsPage.builder(context);
      case AppRoutes.searchResultTabContainerPage:
        return SearchResultTabContainerPage.builder(context);
      default:
        return HomePage.builder(context);
    }
  }
}
