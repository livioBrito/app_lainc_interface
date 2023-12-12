import 'package:flutter/material.dart';
import 'package:lainc_app/presentation/bolsista_lista_de_produtos_screen/bolsista_lista_de_produtos_screen.dart';
import 'package:lainc_app/presentation/login_page_screen/login_page_screen.dart';
import 'package:lainc_app/presentation/home_screen/home_screen.dart';
import 'package:lainc_app/presentation/admin_bolsista_edit_screen/admin_bolsista_edit_screen.dart';
import 'package:lainc_app/presentation/admin_dashboard_screen/admin_dashboard_screen.dart';
import 'package:lainc_app/presentation/admin_product_edit_screen/admin_product_edit_screen.dart';
import 'package:lainc_app/presentation/admin_lista_de_produtos_screen/admin_lista_de_produtos_screen.dart';
import 'package:lainc_app/presentation/admin_research_site_screen/admin_research_site_screen.dart';
import 'package:lainc_app/presentation/basket_list_screen/basket_list_screen.dart';
import 'package:lainc_app/presentation/alert_admin_screen/alert_admin_screen.dart';
import 'package:lainc_app/presentation/category_filters_screen/category_filters_screen.dart';
import 'package:lainc_app/presentation/save_confirmation_screen/save_confirmation_screen.dart';
import 'package:lainc_app/presentation/popup_send_confirmation_screen/popup_send_confirmation_screen.dart';
import 'package:lainc_app/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String bolsistaListaDeProdutosScreen =
      '/bolsista_lista_de_produtos_screen';

  static const String loginPageScreen = '/login_page_screen';

  static const String homeScreen = '/home_screen';

  static const String adminBolsistaEditScreen = '/admin_bolsista_edit_screen';

  static const String adminDashboardScreen = '/admin_dashboard_screen';

  static const String adminProductEditScreen = '/admin_product_edit_screen';

  static const String adminListaDeProdutosScreen =
      '/admin_lista_de_produtos_screen';

  static const String adminResearchSiteScreen = '/admin_research_site_screen';

  static const String basketListScreen = '/basket_list_screen';

  static const String bolsistaDashboardPage = '/bolsista_dashboard_page';

  static const String alertAdminScreen = '/alert_admin_screen';

  static const String categoryFiltersScreen = '/category_filters_screen';

  static const String saveConfirmationScreen = '/save_confirmation_screen';

  static const String popupSendConfirmationScreen =
      '/popup_send_confirmation_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    bolsistaListaDeProdutosScreen: (context) => BolsistaListaDeProdutosScreen(),
    loginPageScreen: (context) => LoginPageScreen(),
    homeScreen: (context) => HomeScreen(),
    adminBolsistaEditScreen: (context) => AdminBolsistaEditScreen(),
    adminDashboardScreen: (context) => AdminDashboardScreen(),
    adminProductEditScreen: (context) => AdminProductEditScreen(),
    adminListaDeProdutosScreen: (context) => AdminListaDeProdutosScreen(),
    adminResearchSiteScreen: (context) => AdminResearchSiteScreen(),
    basketListScreen: (context) => BasketListScreen(),
    alertAdminScreen: (context) => AlertAdminScreen(),
    categoryFiltersScreen: (context) => CategoryFiltersScreen(),
    saveConfirmationScreen: (context) => SaveConfirmationScreen(),
    popupSendConfirmationScreen: (context) => PopupSendConfirmationScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
