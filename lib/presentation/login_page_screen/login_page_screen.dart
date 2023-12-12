import 'package:flutter/material.dart';
import 'package:lainc_app/core/app_export.dart';
import 'package:lainc_app/widgets/custom_checkbox_button.dart';
import 'package:lainc_app/widgets/custom_elevated_button.dart';
import 'package:lainc_app/widgets/custom_text_form_field.dart';

class LoginPageScreen extends StatelessWidget {
  LoginPageScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool loginPageCheckBox = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 8.v),
                Text(
                  "LAINC COLETA",
                  style: CustomTextStyles.headlineLargeExtraBold,
                ),
                SizedBox(height: 83.v),
                SizedBox(
                  height: 41.v,
                  width: 92.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Entrar",
                          style: theme.textTheme.headlineLarge,
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Entrar",
                          style: theme.textTheme.headlineLarge,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 31.v),
                Text(
                  "Insira suas credenciais para entrar no sistema",
                  style: CustomTextStyles.labelLargeGray700Medium,
                ),
                SizedBox(height: 30.v),
                CustomTextFormField(
                  controller: emailController,
                  hintText: "Email",
                  textInputType: TextInputType.emailAddress,
                ),
                SizedBox(height: 32.v),
                CustomTextFormField(
                  controller: passwordController,
                  hintText: "Senha",
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.visiblePassword,
                  suffix: Container(
                    margin: EdgeInsets.fromLTRB(30.h, 10.v, 10.h, 9.v),
                    child: CustomImageView(
                      imagePath:
                          ImageConstant.imgVisibilityfill0wght400grad0opsz241,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    maxHeight: 43.v,
                  ),
                  obscureText: true,
                  contentPadding: EdgeInsets.only(
                    left: 19.h,
                    top: 13.v,
                    bottom: 13.v,
                  ),
                ),
                SizedBox(height: 32.v),
                CustomElevatedButton(
                  height: 47.v,
                  width: 165.h,
                  text: "Entrar",
                  buttonStyle: CustomButtonStyles.fillIndigoA,
                  buttonTextStyle: CustomTextStyles.titleSmallWhiteA700,
                ),
                SizedBox(height: 18.v),
                Text(
                  "Esqueci a senha",
                  style: CustomTextStyles.labelLargeGray700Medium,
                ),
                SizedBox(height: 30.v),
                _buildLoginPageCheckBox(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginPageCheckBox(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 11.h),
        child: CustomCheckboxButton(
          alignment: Alignment.centerLeft,
          text: "Manter Logado",
          value: loginPageCheckBox,
          onChange: (value) {
            loginPageCheckBox = value;
          },
        ),
      ),
    );
  }
}
