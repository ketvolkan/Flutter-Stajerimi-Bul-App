import 'package:flutter/material.dart';
import '../bottomSheet/fab_bottom_sheet.dart';
import '../fabButton/custom_floating_action_button.dart';

class CustomScaffold extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget body;
  final Widget? drawer;
  final Key? globalKey;

  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final PreferredSizeWidget? bottomNavigationBar;
  const CustomScaffold({
    Key? key,
    this.appBar,
    required this.body,
    this.floatingActionButtonLocation = FloatingActionButtonLocation.centerDocked,
    this.bottomNavigationBar,
    this.drawer,
    this.globalKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return appBar != null
        ? Scaffold(
            key: globalKey,
            extendBody: true,
            appBar: appBar,
            drawer: drawer,
            body: Stack(children: [body, const FabBottomSheet()]),
            floatingActionButton: const CustomFloatingActionButton(),
            floatingActionButtonLocation: floatingActionButtonLocation,
            bottomNavigationBar: bottomNavigationBar ?? const SizedBox(),
          )
        : Scaffold(
            key: key,
            extendBody: true,
            body: Stack(children: [body, const FabBottomSheet()]),
            drawer: drawer,
            floatingActionButton: const CustomFloatingActionButton(),
            floatingActionButtonLocation: floatingActionButtonLocation,
            bottomNavigationBar: bottomNavigationBar ?? const SizedBox(),
          );
  }
}
