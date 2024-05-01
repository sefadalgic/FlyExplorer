import 'package:flutter/material.dart';
import 'package:fly_explorer/core/init/navigation/INavigation_service.dart';

class NavigationService extends INavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Future<void> navigateToPage({String? path, Object? args}) async {
    await navigatorKey.currentState?.pushNamed(path!, arguments: args);
  }

  @override
  Future<void> pop() async {
    navigatorKey.currentState?.pop();
  }
}
