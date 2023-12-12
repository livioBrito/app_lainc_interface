import 'package:flutter/material.dart';
import 'package:lainc_app/core/app_export.dart';
import 'package:lainc_app/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class ProductdetailsItemWidget extends StatelessWidget {
  const ProductdetailsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 24.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 3.h,
              top: 4.v,
            ),
            child: Column(
              children: [
                Text(
                  "Arroz Branco 1KG",
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(height: 5.v),
                SizedBox(
                  width: 129.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text(
                          "Código:",
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: Text(
                          "12345677890",
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          CustomElevatedButton(
            width: 100.h,
            text: "Alterar",
            margin: EdgeInsets.only(
              top: 8.v,
              bottom: 2.v,
            ),
          ),
        ],
      ),
    );
  }
}
