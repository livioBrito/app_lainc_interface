import 'package:flutter/material.dart';
import 'package:lainc_app/core/app_export.dart';
import 'package:lainc_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:lainc_app/widgets/app_bar/custom_app_bar.dart';
import 'package:lainc_app/widgets/custom_elevated_button.dart';
import 'package:lainc_app/widgets/custom_outlined_button.dart';
import 'package:lainc_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AdminResearchSiteScreen extends StatelessWidget {
  AdminResearchSiteScreen({Key? key}) : super(key: key);

  TextEditingController establishmentNameEditTextController =
      TextEditingController();

  TextEditingController streetEditTextController = TextEditingController();

  TextEditingController numberEditTextController = TextEditingController();

  TextEditingController neighborhoodEditTextController =
      TextEditingController();

  TextEditingController postalCodeEditTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 34.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text("Cadastrar Local de Pesquisa",
                              style: theme.textTheme.titleSmall)),
                      SizedBox(height: 29.v),
                      Container(
                          margin: EdgeInsets.only(right: 4.h),
                          padding: EdgeInsets.only(
                              left: 17.h, top: 29.v, right: 17.h),
                          decoration: AppDecoration.outlineBlack.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder15),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildEstablishmentNameEditText(context),
                                SizedBox(height: 16.v),
                                _buildStreetEditText(context),
                                SizedBox(height: 16.v),
                                _buildNumberEditText(context),
                                SizedBox(height: 16.v),
                                _buildNeighborhoodEditText(context),
                                SizedBox(height: 16.v),
                                _buildPostalCodeEditText(context),
                                SizedBox(height: 32.v),
                                Padding(
                                    padding: EdgeInsets.only(right: 12.h),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          _buildCancelButton(context),
                                          _buildSaveButton(context)
                                        ])),
                                SizedBox(height: 32.v)
                              ])),
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
  Widget _buildEstablishmentNameEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: CustomTextFormField(
            controller: establishmentNameEditTextController,
            hintText: "Nome do Estabelecimento"));
  }

  /// Section Widget
  Widget _buildStreetEditText(BuildContext context) {
    return CustomTextFormField(
        controller: streetEditTextController, hintText: "Rua");
  }

  /// Section Widget
  Widget _buildNumberEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: CustomTextFormField(
            controller: numberEditTextController, hintText: "Número"));
  }

  /// Section Widget
  Widget _buildNeighborhoodEditText(BuildContext context) {
    return CustomTextFormField(
        controller: neighborhoodEditTextController, hintText: "Bairro");
  }

  /// Section Widget
  Widget _buildPostalCodeEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: CustomTextFormField(
            controller: postalCodeEditTextController,
            hintText: "CEP",
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

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
