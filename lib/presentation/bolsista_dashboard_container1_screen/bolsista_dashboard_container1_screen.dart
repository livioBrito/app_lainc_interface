import 'package:flutter/material.dart';
import 'package:lainc_app/core/app_export.dart';
import 'package:lainc_app/presentation/bolsista_dashboard_container_page/bolsista_dashboard_container_page.dart';
import 'package:lainc_app/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class BolsistaDashboardContainer1Screen extends StatelessWidget {
  BolsistaDashboardContainer1Screen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.bolsistaDashboardContainerPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Grid:
        return "/";
      case BottomBarEnum.Home:
        return "/";
      case BottomBarEnum.Viewlistfill0:
        return AppRoutes.bolsistaDashboardContainerPage;
      case BottomBarEnum.Basket:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.bolsistaDashboardContainerPage:
        return BolsistaDashboardContainerPage();
      default:
        return DefaultWidget();
    }
  }
}
