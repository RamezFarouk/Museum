

import 'package:flutter/material.dart';
import 'package:untitled3/presentation/chatbot_page/chatbot_page.dart';
import '../core/app_export.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/chatbot_container_screen/chatbot_container_screen.dart';
import '../presentation/chatbotthree_screen/chatbotthree_screen.dart';
import '../presentation/chatbottwo_screen/chatbottwo_screen.dart';
import '../presentation/english_home_page_container_screen/english_home_page_container_screen.dart';
import '../presentation/french_home_page_screen/french_home_page_screen.dart';
import '../presentation/germany_home_page_screen/germany_home_page_screen.dart';
import '../presentation/japanes_home_page_screen/japanes_home_page_screen.dart';
import '../presentation/languages_screen/languages_screen.dart';
import '../presentation/map_container_screen/map_container_screen.dart';
import '../presentation/welcome_screen/welcome_screen.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String welcomeScreen = '/welcome_screen';
  static const String chatbotContainerScreen = '/chatbot_container_screen';
  static const String mapContainerScreen = '/map_container_screen';
  static const String chatbotPage = '/chatbot_page';

  static const String mapPage = '/map_page';
  static const String chatbottwoScreen = '/chatbottwo_screen';
  static const String chatbotthreeScreen = '/chatbotthree_screen';
  static const String appNavigationScreen = '/app_navigation_screen';
  static const String languagesScreen = '/languages_screen';
  static const String englishHomePageContainerScreen =
      '/english_home_page_container_screen';
  static const String frenchHomePageScreen = '/french_home_page_screen';

  static const String germanyHomePageScreen = '/germany_home_page_screen';

  static const String japanesHomePageScreen = '/japanes_home_page_screen';

  static const String englishHomePage = '/english_home_page';
  static const String initialRoute = '/initialRoute';


  static Map<String, WidgetBuilder> routes = {
    welcomeScreen: (context) => WelcomeScreen(),
    mapContainerScreen: (context) => MapContainerScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    chatbotPage:(context)=>ChatbotPage(),
    chatbotContainerScreen: (context) => ChatbotContainerScreen(),
    chatbottwoScreen: (context) => ChatbottwoScreen(),
    chatbotthreeScreen: (context) => ChatbotthreeScreen(),
    languagesScreen: (context) => LanguagesScreen(),
    englishHomePageContainerScreen: (context) =>
        EnglishHomePageContainerScreen(),
    frenchHomePageScreen: (context) => FrenchHomePageScreen(),
    germanyHomePageScreen: (context) => GermanyHomePageScreen(),
    japanesHomePageScreen: (context) => JapanesHomePageScreen(),
    initialRoute: (context) => EnglishHomePageContainerScreen(),
  };
}
