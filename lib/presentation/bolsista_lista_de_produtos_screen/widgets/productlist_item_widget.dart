import 'package:flutter/material.dart';
import 'package:lainc_app/core/app_export.dart';

// ignore: must_be_immutable
class ProductlistItemWidget extends StatelessWidget {
  const ProductlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 8.v,
              bottom: 8.v,
            ),
            child: Column(
              children: [
                Text(
                  "Arroz Branco 1KG",
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(height: 8.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Código:",
                      style: theme.textTheme.bodySmall,
                    ),
                    Text(
                      "12345677890",
                      style: theme.textTheme.bodySmall,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 8.v),
            padding: EdgeInsets.all(8.h),
            decoration: AppDecoration.outlineGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "R:",
                  style: CustomTextStyles.labelLargeGray70001,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text(
                    "27,35",
                    style: CustomTextStyles.labelLargeGray70001,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
