import 'package:flutter/material.dart';
import 'package:lainc_app/core/app_export.dart';

// ignore: must_be_immutable
class Productdetails1ItemWidget extends StatelessWidget {
  const Productdetails1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.fromLTRB(16.h, 24.v, 15.h, 24.v),
        decoration: AppDecoration.outlineBlack.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder15,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 4.v),
              child: Column(
                children: [
                  Text(
                    "Arroz Branco 1KG",
                    style: theme.textTheme.bodyLarge,
                  ),
                  SizedBox(height: 6.v),
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
              margin: EdgeInsets.only(
                top: 4.v,
                right: 7.h,
                bottom: 4.v,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 7.h,
                vertical: 8.v,
              ),
              decoration: AppDecoration.outlineGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 1.v),
                    child: Text(
                      "R:",
                      style: CustomTextStyles.labelLargeIndigoA400,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 7.h,
                      top: 1.v,
                    ),
                    child: Text(
                      "27,35",
                      style: CustomTextStyles.labelLargeIndigoA400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
