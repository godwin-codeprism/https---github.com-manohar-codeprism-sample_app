import '../../theme/app_decoration.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/chats_bloc.dart';
import 'models/chats_model.dart';
import 'package:flutter/material.dart';
import 'package:Roptia_Mobile/core/app_export.dart';
import 'package:Roptia_Mobile/widgets/custom_elevated_button.dart';
import 'package:Roptia_Mobile/widgets/custom_search_view.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ChatsBloc>(
        create: (context) => ChatsBloc(ChatsState(chatsModelObj: ChatsModel()))
          ..add(ChatsInitialEvent()),
        child: ChatsPage());
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
                child: Column(children: [
                  _buildFrame(context),
                  Expanded(
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.h, vertical: 32.v),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Spacer(),
                                CustomImageView(
                                    imagePath: ImageConstant.imgGroup,
                                    height: 179.v,
                                    width: 181.h),
                                SizedBox(height: 21.v),
                                Text("lbl_no_new_message".tr,
                                    style:
                                        CustomTextStyles.bodyMediumGray90005),
                                SizedBox(height: 85.v),
                                CustomElevatedButton(
                                    text: "lbl_start_message".tr,
                                    onPressed: () {
                                      onTapStartMessage(context);
                                    })
                              ])))
                ]))));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Container(
        decoration: AppDecoration.fillOnPrimary,
        child: Column(children: [
          CustomAppBar(
              centerTitle: true,
              title: AppbarSubtitle(text: "lbl_users2".tr),
              styleType: Style.bgFill),
          Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 9.v),
              decoration: AppDecoration.outlinePrimaryContainer,
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                SizedBox(height: 6.v),
                Padding(
                    padding: EdgeInsets.only(right: 8.h),
                    child: BlocSelector<ChatsBloc, ChatsState,
                            TextEditingController?>(
                        selector: (state) => state.searchController,
                        builder: (context, searchController) {
                          return CustomSearchView(
                              controller: searchController,
                              hintText: "lbl_search_message".tr,
                              hintStyle: CustomTextStyles.bodyMediumGray50001,
                              contentPadding: EdgeInsets.only(
                                  top: 14.v, right: 30.h, bottom: 14.v));
                        }))
              ]))
        ]));
  }

  /// Navigates to the chatsTabContainer1Screen when the action is triggered.
  onTapStartMessage(BuildContext context) {}
}
