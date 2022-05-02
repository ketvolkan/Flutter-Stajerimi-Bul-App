import 'package:flutter/material.dart';

import 'app/modules/app/management/page_management_view.dart';
import 'app/theme/app_theme.dart';
import 'core/constants/app_constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppConstants.appTitle,
      theme: lightTheme,
      home: const PageManagementView(),
    );
  }
}
