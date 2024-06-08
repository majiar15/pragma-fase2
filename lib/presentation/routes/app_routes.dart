import 'package:flutter/material.dart';

import '../home/home_page.dart';
import 'routes.dart';

Map<String, Widget Function(BuildContext)> get appRoutes {
  return {
    Routes.home: (_) => const HomePage(),
  };
}
