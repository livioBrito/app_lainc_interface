import 'package:flutter/material.dart';
import 'package:lainc_app/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "bolsista_lista_de_produtos",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.bolsistaListaDeProdutosScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "login_page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.loginPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "home",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.homeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "admin_bolsista_edit",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.adminBolsistaEditScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "admin_dashboard",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.adminDashboardScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "admin_product_edit",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.adminProductEditScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "admin_lista_de_produtos",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.adminListaDeProdutosScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "admin_research_site",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.adminResearchSiteScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "basket_list",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.basketListScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "alert_admin",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.alertAdminScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "category_filters",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.categoryFiltersScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "save_confirmation",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.saveConfirmationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "popup_send_confirmation",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.popupSendConfirmationScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
