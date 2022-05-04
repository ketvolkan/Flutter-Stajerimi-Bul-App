import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget body;
  final Widget? drawer;
  final Key? globalKey;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final PreferredSizeWidget? bottomNavigationBar;
  const CustomScaffold({
    Key? key,
    this.appBar,
    required this.body,
    this.floatingActionButton,
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
            body: body,
            floatingActionButton: floatingActionButton ?? const SizedBox(),
            floatingActionButtonLocation: floatingActionButtonLocation,
            bottomNavigationBar: bottomNavigationBar ?? const SizedBox(),
          )
        : Scaffold(
            key: key,
            extendBody: true,
            body: body,
            drawer: drawer,
            floatingActionButton: floatingActionButton ?? const SizedBox(),
            floatingActionButtonLocation: floatingActionButtonLocation,
            bottomNavigationBar: bottomNavigationBar ?? const SizedBox(),
          );
  }
}
