import '../bolsista_lista_de_produtos_screen/widgets/productlist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:lainc_app/core/app_export.dart';
import 'package:lainc_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:lainc_app/widgets/app_bar/custom_app_bar.dart';
import 'package:lainc_app/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class BolsistaListaDeProdutosScreen extends StatelessWidget {
  BolsistaListaDeProdutosScreen({Key? key}) : super(key: key);

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
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 32.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Lista de Produtos",
                          style: theme.textTheme.titleSmall)),
                  SizedBox(height: 16.v),
                  CustomSearchView(
                      controller: searchController, hintText: "Buscar..."),
                  SizedBox(height: 16.v),
                  _buildAddPrices(context),
                  SizedBox(height: 16.v),
                  SizedBox(height: 16.v),
                  _buildProductList(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.fromLTRB(16.h, 56.v, 314.h, 23.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildAddPrices(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text("Adicione os Preços Abaixo",
          style: CustomTextStyles.bodySmallGray700),
      Spacer(),
      CustomImageView(
          imagePath: ImageConstant.imgFilterAltFill,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(right: 8.h)),
      CustomImageView(
          imagePath: ImageConstant.imgFilterAltOff,
          height: 24.adaptSize,
          width: 24.adaptSize)
    ]);
  }

  /// Section Widget
  Widget _buildProductList(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 8.v);
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return ProductlistItemWidget();
        });
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
