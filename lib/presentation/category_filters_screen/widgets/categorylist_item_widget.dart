import 'package:flutter/material.dart';
import 'package:lainc_app/core/app_export.dart';

// ignore: must_be_immutable
class CategorylistItemWidget extends StatelessWidget {
  const CategorylistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgFastfoodFill0,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(bottom: 3.v),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 11.h,
            top: 6.v,
          ),
          child: Text(
            "Alimentação e Bebidas",
            style: CustomTextStyles.bodyLargeGray700,
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgVector,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ],
    );
  }
}
