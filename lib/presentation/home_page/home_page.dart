import '../../theme/app_decoration.dart';
import 'bloc/home_bloc.dart';
import 'models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:Roptia_Mobile/core/app_export.dart';
import 'package:Roptia_Mobile/widgets/custom_icon_button.dart';
import 'package:Roptia_Mobile/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  const HomePage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(HomeState(
        homeModelObj: HomeModel(),
      ))
        ..add(HomeInitialEvent()),
      child: HomePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildElevenSection(context),
                SizedBox(height: 11.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child:
                      BlocSelector<HomeBloc, HomeState, TextEditingController?>(
                    selector: (state) => state.searchController,
                    builder: (context, searchController) {
                      return CustomSearchView(
                        controller: searchController,
                        hintText: "lbl_search".tr,
                        hintStyle: theme.textTheme.bodyMedium!,
                      );
                    },
                  ),
                ),
                SizedBox(height: 13.v),
                Container(
                  width: 277.h,
                  margin: EdgeInsets.only(
                    left: 42.h,
                    right: 39.h,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_one_stop".tr,
                          style: CustomTextStyles.headlineSmallPrimary,
                        ),
                        TextSpan(
                          text: " ",
                        ),
                        TextSpan(
                          text: "lbl_shop".tr,
                          style: CustomTextStyles.headlineSmallPrimary,
                        ),
                        TextSpan(
                          text: "lbl_for_your".tr,
                          style: theme.textTheme.headlineSmall,
                        ),
                        TextSpan(
                          text: "lbl_property".tr,
                          style: CustomTextStyles.headlineSmallGray90004,
                        ),
                        TextSpan(
                          text: " ",
                        ),
                        TextSpan(
                          text: "lbl_needs".tr,
                          style: theme.textTheme.headlineSmall,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 2.v),
                Container(
                  width: 333.h,
                  margin: EdgeInsets.only(
                    left: 11.h,
                    right: 15.h,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_we".tr,
                          style: CustomTextStyles.titleMediumGray90004,
                        ),
                        TextSpan(
                          text: "msg_connect_empower".tr,
                          style: CustomTextStyles.titleMediumPrimary,
                        ),
                        TextSpan(
                          text: " ",
                        ),
                        TextSpan(
                          text: "msg_property_owners".tr,
                          style: CustomTextStyles.bodyLargeGray90004,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 27.v),
                _buildFrameSection(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildElevenSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 20.v),
      decoration: AppDecoration.fillPrimary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_hello_krish".tr,
            style: CustomTextStyles.bodyLargeUbuntuOnPrimary,
          ),
          SizedBox(height: 5.v),
          Text(
            "lbl_welcome".tr,
            style: CustomTextStyles.headlineSmallPoppinsOnPrimary,
          ),
          SizedBox(height: 10.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameSection(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 19.h),
      padding: EdgeInsets.symmetric(
        horizontal: 140.h,
        vertical: 74.v,
      ),
      decoration: AppDecoration.fillBlack9001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: CustomIconButton(
        height: 26.v,
        width: 39.h,
        decoration: IconButtonStyleHelper.fillOnPrimary,
        child: CustomImageView(
          imagePath: ImageConstant.imgVector,
        ),
      ),
    );
  }
}
