import '../category_filters_screen/widgets/categorylist_item_widget.dart';
import '../category_filters_screen/widgets/productlist1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:lainc_app/core/app_export.dart';
import 'package:lainc_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:lainc_app/widgets/app_bar/custom_app_bar.dart';

class CategoryFiltersScreen extends StatelessWidget {
  const CategoryFiltersScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 5.v),
            child: Container(
              height: 777.v,
              width: 298.h,
              margin: EdgeInsets.only(
                left: 29.h,
                right: 33.h,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 322.v),
                      child: Text(
                        "Enviar",
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 3.h),
                            child: Text(
                              "Categorias",
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                        ),
                        SizedBox(height: 50.v),
                        _buildCategoryList(context),
                        SizedBox(height: 26.v),
                        _buildProductList(context),
                        SizedBox(height: 31.v),
                        _buildProductDetails(context),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 75.v,
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgVectorBlack900,
          margin: EdgeInsets.symmetric(
            horizontal: 33.h,
            vertical: 19.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildCategoryList(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 14.0.v),
          child: SizedBox(
            width: 293.h,
            child: Divider(
              height: 1.v,
              thickness: 1.v,
              color: appTheme.gray300,
            ),
          ),
        );
      },
      itemCount: 9,
      itemBuilder: (context, index) {
        return CategorylistItemWidget();
      },
    );
  }

  /// Section Widget
  Widget _buildProductList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 4.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 32.v,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return Productlist1ItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildProductDetails(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 2.v),
            child: Text(
              "Código do Produto ASC",
              style: CustomTextStyles.bodyLargeGray700,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgVector,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ],
      ),
    );
  }
}
