import 'package:flutter/material.dart';
import 'package:shashankgowdasp_s_application4/presentation/splashactivity_screen/splashactivity_screen.dart';

class AppRoutes {
  static const String splashactivityScreen = '/splashactivity_screen';

  static Map<String, WidgetBuilder> routes = {
    splashactivityScreen: (context) => SplashactivityScreen()
  };
}
