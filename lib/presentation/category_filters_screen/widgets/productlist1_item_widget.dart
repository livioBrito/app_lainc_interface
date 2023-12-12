import 'package:flutter/material.dart';
import 'package:lainc_app/core/app_export.dart';

// ignore: must_be_immutable
class Productlist1ItemWidget extends StatelessWidget {
  const Productlist1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 2.v),
          child: Text(
            "Nome do Produto",
            style: CustomTextStyles.bodyLargeGray700,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgVector,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ],
    );
  }
}
