import 'package:flutter/material.dart';
import 'package:lainc_app/core/app_export.dart';
import 'package:lainc_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:lainc_app/widgets/app_bar/custom_app_bar.dart';
import 'package:lainc_app/widgets/custom_drop_down.dart';
import 'package:lainc_app/widgets/custom_elevated_button.dart';
import 'package:lainc_app/widgets/custom_outlined_button.dart';
import 'package:lainc_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AdminProductEditScreen extends StatelessWidget {
  AdminProductEditScreen({Key? key}) : super(key: key);

  TextEditingController productNameEditTextController = TextEditingController();

  TextEditingController productCodeEditTextController = TextEditingController();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  TextEditingController descriptionEditTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 32.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text("Dados do Produto",
                              style: theme.textTheme.titleSmall)),
                      SizedBox(height: 31.v),
                      _buildProductName(context),
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
  Widget _buildProductNameEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 12.h),
        child: CustomTextFormField(
            controller: productNameEditTextController,
            hintText: "Nome do Produto"));
  }

  /// Section Widget
  Widget _buildProductCodeEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 12.h),
        child: CustomTextFormField(
            controller: productCodeEditTextController,
            hintText: "Código do Produto"));
  }

  /// Section Widget
  Widget _buildDescriptionEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 12.h),
        child: CustomTextFormField(
            controller: descriptionEditTextController,
            hintText: "Descrição...",
            textInputAction: TextInputAction.done));
  }

  /// Section Widget
  Widget _buildCancelButton(BuildContext context) {
    return CustomOutlinedButton(width: 100.h, text: "Cancelar");
  }

  /// Section Widget
  Widget _buildSaveButton(BuildContext context) {
    return CustomElevatedButton(width: 100.h, text: "Salvar");
  }

  /// Section Widget
  Widget _buildProductName(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 4.h),
        padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 29.v),
        decoration: AppDecoration.outlineBlack
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildProductNameEditText(context),
              SizedBox(height: 16.v),
              _buildProductCodeEditText(context),
              SizedBox(height: 16.v),
              Padding(
                  padding: EdgeInsets.only(right: 12.h),
                  child: CustomDropDown(
                      icon: Container(
                          margin: EdgeInsets.fromLTRB(30.h, 9.v, 7.h, 10.v),
                          child: CustomImageView(
                              imagePath: ImageConstant
                                  .imgArrowdropdownfill0wght400grad0opsz241,
                              height: 24.adaptSize,
                              width: 24.adaptSize)),
                      hintText: "Selecione uma Categoria",
                      items: dropdownItemList,
                      onChanged: (value) {})),
              SizedBox(height: 16.v),
              _buildDescriptionEditText(context),
              SizedBox(height: 32.v),
              Padding(
                  padding: EdgeInsets.only(right: 12.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildCancelButton(context),
                        _buildSaveButton(context)
                      ])),
              SizedBox(height: 11.v)
            ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
