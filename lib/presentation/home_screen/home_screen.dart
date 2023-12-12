import '../home_screen/widgets/menuprincipal_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:lainc_app/core/app_export.dart';
import 'package:lainc_app/widgets/app_bar/appbar_title.dart';
import 'package:lainc_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:lainc_app/widgets/app_bar/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.fromLTRB(16.h, 32.v, 16.h, 34.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Menu Principal",
                style: theme.textTheme.titleSmall,
              ),
              SizedBox(height: 32.v),
              _buildMenuPrincipal(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarTitle(
        text: "Olá! Lívio Fagundes",
        margin: EdgeInsets.only(
          left: 16.h,
          top: 66.v,
          bottom: 23.v,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgNotificationBell,
          margin: EdgeInsets.fromLTRB(18.h, 62.v, 18.h, 23.v),
        ),
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildMenuPrincipal(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      padding: EdgeInsets.all(16.h),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 95.v,
          crossAxisCount: 3,
          mainAxisSpacing: 8.h,
          crossAxisSpacing: 8.h,
        ),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 4,
        itemBuilder: (context, index) {
          return MenuprincipalItemWidget();
        },
      ),
    );
  }
}
