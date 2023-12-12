import '../basket_list_screen/widgets/productdetails1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:lainc_app/core/app_export.dart';
import 'package:lainc_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:lainc_app/widgets/app_bar/custom_app_bar.dart';
import 'package:lainc_app/widgets/custom_floating_button.dart';

class BasketListScreen extends StatelessWidget {
  const BasketListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 34.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("Revisar Preços Cadastrados",
                              style: theme.textTheme.titleSmall)),
                      SizedBox(height: 4.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text(
                              "Confira os valores inseridos antes de enviar.",
                              style: CustomTextStyles.bodySmallGray700)),
                      SizedBox(height: 31.v),
                      _buildProductDetails(context),
                      SizedBox(height: 68.v)
                    ])),
            floatingActionButton: _buildFloatingActionButton(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.fromLTRB(16.h, 56.v, 314.h, 23.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildProductDetails(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.h),
            child: ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 8.v);
                },
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Productdetails1ItemWidget();
                })));
  }

  /// Section Widget
  Widget _buildFloatingActionButton(BuildContext context) {
    return CustomFloatingButton(
        height: 61,
        width: 61,
        backgroundColor: appTheme.indigoA400,
        child: CustomImageView(
            imagePath: ImageConstant.imgSendFill0Wght,
            height: 30.5.v,
            width: 30.5.h));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
