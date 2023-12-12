import '../admin_lista_de_produtos_screen/widgets/productdetails_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:lainc_app/core/app_export.dart';
import 'package:lainc_app/widgets/app_bar/appbar_title_image.dart';
import 'package:lainc_app/widgets/app_bar/custom_app_bar.dart';
import 'package:lainc_app/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class AdminListaDeProdutosScreen extends StatelessWidget {
  AdminListaDeProdutosScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 32.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Lista de Produtos",
                          style: theme.textTheme.titleSmall)),
                  SizedBox(height: 31.v),
                  CustomSearchView(
                      controller: searchController, hintText: "Buscar..."),
                  SizedBox(height: 16.v),
                  _buildAddPrices(context),
                  SizedBox(height: 16.v),
                  _buildProductDetails(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: AppbarTitleImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 16.h, top: 56.v, bottom: 23.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildAddPrices(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 12.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.only(top: 4.v, bottom: 3.v),
              child: Text("Adicione os Preços Abaixo",
                  style: CustomTextStyles.bodySmallGray700)),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgFilterAltFill,
              height: 24.adaptSize,
              width: 24.adaptSize),
          CustomImageView(
              imagePath: ImageConstant.imgFilterAltOff,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(left: 13.h))
        ]));
  }

  /// Section Widget
  Widget _buildProductDetails(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 16.v);
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return ProductdetailsItemWidget();
        });
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
