import 'package:flutter/material.dart';

class NavigationService {
  static final NavigationService _instance = NavigationService._internal();
  factory NavigationService() => _instance;
  NavigationService._internal();

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  //  Push Route
  Future<dynamic>? push(Route route) {
    return navigatorKey.currentState?.push(route);
  }

  //  Push Widget with Arguments
  Future<dynamic>? pushWidget(Widget page, {Object? arguments}) {
    return navigatorKey.currentState?.push(
      MaterialPageRoute(
        builder: (_) => page,
        settings: RouteSettings(arguments: arguments),
      ),
    );
  }

  //  Push Replacement with Arguments
  Future<dynamic>? pushReplacement(Widget page, {Object? arguments}) {
    return navigatorKey.currentState?.pushReplacement(
      MaterialPageRoute(
        builder: (_) => page,
        settings: RouteSettings(arguments: arguments),
      ),
    );
  }

  //  Pop
  void pop([Object? result]) {
    navigatorKey.currentState?.pop(result);
  }

  //  Pop Until First
  void popUntilFirst() {
    navigatorKey.currentState?.popUntil((route) => route.isFirst);
  }
}
