import 'package:flutter/material.dart';
import 'package:lainc_app/core/app_export.dart';
import 'package:lainc_app/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class AdminProductDetailDialog extends StatelessWidget {
  const AdminProductDetailDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: 328.h,
      padding: EdgeInsets.all(25.h),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 27.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Arroz Branco 1KG",
                  style: theme.textTheme.titleLarge,
                ),
                SizedBox(height: 7.v),
                Text(
                  "Código: 1234567",
                  style: CustomTextStyles.labelLargeIndigoA400Medium,
                ),
                SizedBox(height: 7.v),
                Text(
                  "Categoria: Alimentação e bebidas",
                  style: CustomTextStyles.labelLargeGray700Medium,
                ),
              ],
            ),
          ),
          SizedBox(height: 21.v),
          Container(
            width: 250.h,
            margin: EdgeInsets.only(right: 27.h),
            child: Text(
              "Breve texto com a descrição do produto, este campo pode ficar em branco.",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyMedium,
            ),
          ),
          SizedBox(height: 29.v),
          CustomElevatedButton(
            width: 101.h,
            text: "Editar",
            alignment: Alignment.center,
          ),
          SizedBox(height: 15.v),
        ],
      ),
    );
  }
}
