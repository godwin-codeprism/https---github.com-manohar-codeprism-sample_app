import '../../theme/app_decoration.dart';
import 'bloc/search_result_tab_container_bloc.dart';
import 'models/search_result_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:Roptia_Mobile/core/app_export.dart';
import 'package:Roptia_Mobile/widgets/custom_icon_button.dart';
import 'package:Roptia_Mobile/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class SearchResultTabContainerPage extends StatefulWidget {
  const SearchResultTabContainerPage({Key? key})
      : super(
          key: key,
        );

  @override
  SearchResultTabContainerPageState createState() =>
      SearchResultTabContainerPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<SearchResultTabContainerBloc>(
      create: (context) =>
          SearchResultTabContainerBloc(SearchResultTabContainerState(
        searchResultTabContainerModelObj: SearchResultTabContainerModel(),
      ))
            ..add(SearchResultTabContainerInitialEvent()),
      child: SearchResultTabContainerPage(),
    );
  }
}

class SearchResultTabContainerPageState
    extends State<SearchResultTabContainerPage> with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildUsersSection(context),
                SizedBox(height: 44.v),
                Center(child: Text("In progress")),
                _buildFrameSection(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUsersSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.fillPrimary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 33.v),
          Text(
            "lbl_users".tr,
            style: CustomTextStyles.headlineSmallPoppinsOnPrimary,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameSection(BuildContext context) {
    return SizedBox(
      height: 103.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(top: 23.v),
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 9.v,
              ),
              decoration: AppDecoration.fillOnPrimary,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: 28.v,
                    width: 213.h,
                    margin: EdgeInsets.only(top: 34.v),
                    child: TabBar(
                      controller: tabviewController,
                      labelPadding: EdgeInsets.zero,
                      tabs: [
                        Tab(
                          child: Text(
                            "lbl_london".tr,
                          ),
                        ),
                        Tab(
                          child: Text(
                            "lbl_street_name".tr,
                          ),
                        ),
                        Tab(
                          child: Text(
                            "lbl_1100111".tr,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 33.v,
                    width: 35.h,
                    margin: EdgeInsets.only(top: 29.v),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CustomIconButton(
                          height: 33.v,
                          width: 35.h,
                          alignment: Alignment.center,
                          child: CustomImageView(),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 1.h),
                          child: CustomIconButton(
                            height: 28.adaptSize,
                            width: 28.adaptSize,
                            padding: EdgeInsets.all(7.h),
                            decoration: IconButtonStyleHelper.fillPrimary,
                            alignment: Alignment.bottomRight,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgClose,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: BlocSelector<SearchResultTabContainerBloc,
                SearchResultTabContainerState, TextEditingController?>(
              selector: (state) => state.searchController,
              builder: (context, searchController) {
                return CustomSearchView(
                  width: 320.h,
                  controller: searchController,
                  hintText: "lbl_search".tr,
                  hintStyle: theme.textTheme.bodyMedium!,
                  alignment: Alignment.topCenter,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
