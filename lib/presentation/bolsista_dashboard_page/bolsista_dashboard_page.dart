import 'package:flutter/material.dart';
import 'package:lainc_app/core/app_export.dart';
import 'package:lainc_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:lainc_app/widgets/app_bar/custom_app_bar.dart';
import 'package:lainc_app/widgets/custom_outlined_button.dart';

class BolsistaDashboardPage extends StatelessWidget {
  const BolsistaDashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 32.v),
                child: Column(children: [
                  Text("Painel Administrativo",
                      style: theme.textTheme.titleSmall),
                  SizedBox(height: 19.v),
                  Container(
                      margin: EdgeInsets.only(left: 83.h, right: 87.h),
                      padding: EdgeInsets.symmetric(
                          horizontal: 19.h, vertical: 13.v),
                      decoration: AppDecoration.outlineBlack.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder15),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(height: 8.v),
                            CustomImageView(
                                imagePath: ImageConstant.imgUser,
                                height: 40.adaptSize,
                                width: 40.adaptSize),
                            SizedBox(height: 18.v),
                            Text("Lívio Fagundes Brito",
                                style: theme.textTheme.bodyMedium),
                            SizedBox(height: 5.v),
                            Text("201940600001",
                                style: theme.textTheme.bodySmall)
                          ])),
                  SizedBox(height: 32.v),
                  _buildSairDoSistema(context),
                  SizedBox(height: 5.v)
                ]))));
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
  Widget _buildSairDoSistema(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 4.h),
        padding: EdgeInsets.all(23.h),
        decoration: AppDecoration.outlineBlack
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Container(
              margin: EdgeInsets.only(right: 1.h),
              padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 9.v),
              decoration: AppDecoration.outlineBlack
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding:
                            EdgeInsets.only(left: 10.h, top: 5.v, bottom: 2.v),
                        child: Text("Cadastrar Preços",
                            style: CustomTextStyles.labelLargeGray70001Medium)),
                    CustomImageView(
                        imagePath: ImageConstant.imgArrowRight,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(bottom: 1.v))
                  ])),
          SizedBox(height: 16.v),
          Container(
              margin: EdgeInsets.only(right: 1.h),
              decoration: AppDecoration.outlineBlack
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 14.h, vertical: 12.v),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusStyle.roundedBorder8),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 1.v),
                            child: Text("Meus Locais de Pesquisa",
                                style: CustomTextStyles
                                    .labelLargeGray70001Medium)),
                        CustomImageView(
                            imagePath: ImageConstant.imgArrowRightIndigoA400,
                            height: 12.v,
                            width: 7.h,
                            margin: EdgeInsets.only(top: 1.v, bottom: 3.v))
                      ]))),
          SizedBox(height: 32.v),
          CustomOutlinedButton(
              height: 37.v,
              width: 182.h,
              text: "Sair do Sistema",
              buttonStyle: CustomButtonStyles.outlineRed,
              buttonTextStyle: CustomTextStyles.labelLargeRed400),
          SizedBox(height: 17.v)
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
