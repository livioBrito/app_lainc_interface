import 'package:flutter/material.dart';
import 'package:lainc_app/core/app_export.dart';
import 'package:lainc_app/widgets/custom_elevated_button.dart';
import 'package:lainc_app/widgets/custom_outlined_button.dart';

class PopupSendConfirmationBolsistaScreen extends StatelessWidget {
  const PopupSendConfirmationBolsistaScreen({Key? key})
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
              horizontal: 15.h,
              vertical: 26.v,
            ),
            decoration: AppDecoration.fillWhiteA.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL20,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Enviar Preços Cadastrados",
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(height: 32.v),
                SizedBox(
                  width: 325.h,
                  child: Text(
                    "Clicando em enviar você estará encaminhando todos os preços cadastrados para o banco de dados.",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyMediumGray700,
                  ),
                ),
                Spacer(),
                CustomElevatedButton(
                  width: 100.h,
                  text: "Enviar",
                ),
                SizedBox(height: 28.v),
                CustomOutlinedButton(
                  width: 100.h,
                  text: "Cancelar",
                  buttonTextStyle: CustomTextStyles.labelLargeGray700,
                ),
                SizedBox(height: 11.v),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
