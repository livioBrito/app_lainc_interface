import 'package:flutter/material.dart';
import 'package:lainc_app/core/app_export.dart';
import 'package:lainc_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:lainc_app/widgets/app_bar/custom_app_bar.dart';
import 'package:lainc_app/widgets/custom_outlined_button.dart';

class AdminDashboardScreen extends StatelessWidget {
  const AdminDashboardScreen({Key? key}) : super(key: key);

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
                  _buildPainelAdministrativo(context),
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
  Widget _buildPainelAdministrativo(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 4.h),
        padding: EdgeInsets.symmetric(horizontal: 52.h),
        child: Column(children: [
          Text("Painel Administrativo", style: theme.textTheme.titleSmall),
          SizedBox(height: 19.v),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 13.v),
              decoration: AppDecoration.outlineBlack
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 8.v),
                    CustomImageView(
                        imagePath: ImageConstant.imgUser,
                        height: 40.adaptSize,
                        width: 40.adaptSize),
                    SizedBox(height: 19.v),
                    Text("Ingridh Igreja de Salles Barbosa",
                        style: theme.textTheme.bodyMedium),
                    SizedBox(height: 5.v),
                    Text("201940600001", style: theme.textTheme.bodySmall)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildSairDoSistema(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 4.h),
        padding: EdgeInsets.all(23.h),
        decoration: AppDecoration.outlineBlack
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                            padding: EdgeInsets.only(
                                left: 10.h, top: 3.v, bottom: 4.v),
                            child: Text("Cadastrar Produtos",
                                style: CustomTextStyles
                                    .labelLargeGray70001Medium)),
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
                  child: _buildButtonBolsistas(context,
                      dynamicText: "Cadastrar Locais",
                      dynamicImage: ImageConstant.imgArrowRightIndigoA400)),
              SizedBox(height: 16.v),
              Padding(
                  padding: EdgeInsets.only(right: 1.h),
                  child: _buildButtonBolsistas(context,
                      dynamicText: "Bolsistas",
                      dynamicImage: ImageConstant.imgArrowRightIndigoA400)),
              SizedBox(height: 16.v),
              Padding(
                  padding: EdgeInsets.only(right: 1.h),
                  child: _buildButtonBolsistas(context,
                      dynamicText: "Exportar Planilha",
                      dynamicImage: ImageConstant.imgArrowRightWhiteA700)),
              SizedBox(height: 32.v),
              CustomOutlinedButton(
                  height: 37.v,
                  width: 182.h,
                  text: "Sair do Sistema",
                  buttonStyle: CustomButtonStyles.outlineRed,
                  buttonTextStyle: CustomTextStyles.labelLargeRed400)
            ]));
  }

  /// Common widget
  Widget _buildButtonBolsistas(
    BuildContext context, {
    required String dynamicText,
    required String dynamicImage,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 12.v),
        decoration: AppDecoration.outlineBlack
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(dynamicText,
                  style: CustomTextStyles.labelLargeGray70001Medium
                      .copyWith(color: appTheme.gray70001)),
              CustomImageView(
                  imagePath: dynamicImage,
                  height: 12.v,
                  width: 7.h,
                  margin: EdgeInsets.only(top: 2.v, bottom: 3.v))
            ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
