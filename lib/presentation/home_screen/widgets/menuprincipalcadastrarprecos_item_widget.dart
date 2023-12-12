import 'package:flutter/material.dart';
import 'package:lainc_app/core/app_export.dart';

// ignore: must_be_immutable
class MenuprincipalcadastrarprecosItemWidget extends StatelessWidget {
  const MenuprincipalcadastrarprecosItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          CustomImageView(
            imagePath: ImageConstant.imgIconCadastrarPreOs,
            height: 30.adaptSize,
            width: 30.adaptSize,
          ),
          SizedBox(height: 7.v),
          SizedBox(
            width: 57.h,
            child: Text(
              "Cadastrar Preços",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
