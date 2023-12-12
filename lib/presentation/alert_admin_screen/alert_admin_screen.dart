import 'package:flutter/material.dart';
import 'package:lainc_app/core/app_export.dart';
import 'package:lainc_app/widgets/custom_elevated_button.dart';
import 'package:lainc_app/widgets/custom_outlined_button.dart';

class AlertAdminScreen extends StatelessWidget {
  const AlertAdminScreen({Key? key})
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
              vertical: 24.v,
            ),
            decoration: AppDecoration.fillWhiteA.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL20,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "INFO",
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(height: 33.v),
                SizedBox(
                  width: 326.h,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text:
                              "O conteúdo a seguir é de extrema importância para o desenvolvimento da pesquisa. \r\nTenha certeza que todos os dados modificados estejam corretos. \r\nEm caso de dúvidas consulte a equipe do laboratório. \r\n",
                          style: CustomTextStyles.bodyMediumRed400_1,
                        ),
                        TextSpan(
                          text:
                              "NÂO MODIFIQUE OS DADOS CASO HAJA QUALQUER DÚVIDA!",
                          style: CustomTextStyles.bodyMediumRed400Regular,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: 25.v),
                CustomElevatedButton(
                  width: 100.h,
                  text: "Continuar",
                ),
                SizedBox(height: 28.v),
                CustomOutlinedButton(
                  width: 100.h,
                  text: "Cancelar",
                  buttonTextStyle: CustomTextStyles.labelLargeGray700,
                ),
                SizedBox(height: 13.v),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
