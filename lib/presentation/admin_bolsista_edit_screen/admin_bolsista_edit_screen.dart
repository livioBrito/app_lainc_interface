import 'package:flutter/material.dart';
import 'package:lainc_app/core/app_export.dart';
import 'package:lainc_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:lainc_app/widgets/app_bar/custom_app_bar.dart';
import 'package:lainc_app/widgets/custom_checkbox_button.dart';
import 'package:lainc_app/widgets/custom_elevated_button.dart';
import 'package:lainc_app/widgets/custom_outlined_button.dart';
import 'package:lainc_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AdminBolsistaEditScreen extends StatelessWidget {
  AdminBolsistaEditScreen({Key? key}) : super(key: key);

  TextEditingController fullNameEditTextController = TextEditingController();

  TextEditingController registrationNumberEditTextController =
      TextEditingController();

  TextEditingController passwordEditTextController = TextEditingController();

  TextEditingController researchLocationEditTextController =
      TextEditingController();

  TextEditingController affiliationEditTextController = TextEditingController();

  bool vectorCheckBox = false;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 32.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 32.v),
                      Text("Dados do Bolsista",
                          style: theme.textTheme.titleSmall),
                      SizedBox(height: 32.v),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.h, vertical: 32.v),
                          decoration: AppDecoration.outlineBlack.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder15),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildFullNameEditText(context),
                                SizedBox(height: 16.v),
                                _buildRegistrationNumberEditText(context),
                                SizedBox(height: 16.v),
                                _buildPasswordEditText(context),
                                SizedBox(height: 16.v),
                                _buildResearchLocationEditText(context),
                                SizedBox(height: 16.v),
                                _buildAffiliationEditText(context),
                                SizedBox(height: 32.v),
                                _buildVectorCheckBox(context),
                                SizedBox(height: 32.v),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      _buildCancelarButton(context),
                                      _buildSalvarButton(context)
                                    ]),
                                SizedBox(height: 16.v)
                              ])),
                      SizedBox(height: 8.v)
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
  Widget _buildFullNameEditText(BuildContext context) {
    return CustomTextFormField(
        controller: fullNameEditTextController, hintText: "Nome Completo");
  }

  /// Section Widget
  Widget _buildRegistrationNumberEditText(BuildContext context) {
    return CustomTextFormField(
        controller: registrationNumberEditTextController,
        hintText: "Matricula");
  }

  /// Section Widget
  Widget _buildPasswordEditText(BuildContext context) {
    return CustomTextFormField(
        controller: passwordEditTextController, hintText: "Senha");
  }

  /// Section Widget
  Widget _buildResearchLocationEditText(BuildContext context) {
    return CustomTextFormField(
        controller: researchLocationEditTextController,
        hintText: "Local de pesquisa...");
  }

  /// Section Widget
  Widget _buildAffiliationEditText(BuildContext context) {
    return CustomTextFormField(
        controller: affiliationEditTextController,
        hintText: "Vinculo...",
        textInputAction: TextInputAction.done);
  }

  /// Section Widget
  Widget _buildVectorCheckBox(BuildContext context) {
    return CustomCheckboxButton(
        text: "Privilégio de Administrador",
        value: vectorCheckBox,
        onChange: (value) {
          vectorCheckBox = value;
        });
  }

  /// Section Widget
  Widget _buildCancelarButton(BuildContext context) {
    return CustomOutlinedButton(width: 100.h, text: "Cancelar");
  }

  /// Section Widget
  Widget _buildSalvarButton(BuildContext context) {
    return CustomElevatedButton(width: 100.h, text: "Salvar");
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
