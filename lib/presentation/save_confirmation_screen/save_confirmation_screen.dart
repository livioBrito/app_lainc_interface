import 'package:flutter/material.dart';
import 'package:lainc_app/core/app_export.dart';
import 'package:lainc_app/widgets/custom_elevated_button.dart';
import 'package:lainc_app/widgets/custom_outlined_button.dart';

class SaveConfirmationScreen extends StatelessWidget {
  const SaveConfirmationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 68.h,
              vertical: 26.v,
            ),
            decoration: AppDecoration.fillWhiteA.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL20,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Salvar Alterações",
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(height: 52.v),
                Text(
                  "Você tem certeza que deseja salvar?",
                  style: CustomTextStyles.bodyMediumGray700,
                ),
                SizedBox(height: 54.v),
                CustomElevatedButton(
                  width: 100.h,
                  text: "Continuar",
                ),
                SizedBox(height: 29.v),
                CustomOutlinedButton(
                  width: 100.h,
                  text: "Cancelar",
                  buttonTextStyle: CustomTextStyles.labelLargeGray700,
                ),
                SizedBox(height: 75.v),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
