import 'package:flutter/material.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/utils/utils.dart';
import '../../../../core/variables/color.dart';
import '../../../../core/variables/icons.dart';
import '../../common/widgets/appBar/custom_app_bar.dart';
import '../../common/widgets/bottomNavigationBar/custom_botton_navigation_bar.dart';
import '../../common/widgets/buttons/custom_icon_button.dart';
import '../../common/widgets/scaffold/custom_scaffold.dart';
import '../views/home_management/home_management_view.dart';
import '../views/profile_management/profile_management_view.dart';
import '../views/search_managment/search_management_view.dart';
import '../views/setting_management/setting_management_view.dart';

class PageManagementView extends StatefulWidget {
  const PageManagementView({Key? key}) : super(key: key);

  @override
  State<PageManagementView> createState() => _PageManagementViewState();
}

class _PageManagementViewState extends State<PageManagementView> {
  int _currentIndex = 0;
  final _pageController = PageController(viewportFraction: 1);
  void pageChange(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: _buildAppBar,
      body: PageView(
        controller: _pageController,
        onPageChanged: pageChange,
        children: const [
          ProfileManagementView(),
          HomeManagementView(),
          SearchManagementView(),
          SettingManagementView(),
        ],
      ),
      bottomNavigationBar: _buildNavigationBar,
      floatingActionButton: _floatingActionButton,
    );
  }

  FloatingActionButton get _floatingActionButton => FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColor.fabButtonColor,
        child: Icon(
          AppIcons.floatingActionButtonAddIcon,
          size: Utils.iconNormal,
        ),
      );
  CustomNavigationBar get _buildNavigationBar => CustomNavigationBar(
        onTap: (index) {
          _pageController.jumpToPage(index);
          //? Animasyonlu Geçiş
          //_pageController.animateToPage(index, duration: const Duration(milliseconds: Utils.lowDuration), curve: Curves.ease);
        },
        currentIndex: _currentIndex,
        backgroundColor: AppColor.primaryColor,
        selectedItemColor: AppColor.bottomNavBarItemColor,
        unSelectedItemColor: AppColor.bottomNavBarItemColor.withOpacity(0.75),
      );
  CustomAppBar get _buildAppBar => CustomAppBar(
        title: Text(
          AppConstants.siteTitle,
          style: AppTextStyle.appBarTextStyle,
        ),
        centerTitle: true,
        showLeadingBackIcon: false,
        onLeadingPressed: () {},
        actions: [filterButton],
      );

  CustomIconButton get filterButton => CustomIconButton(
        icon: AppIcons.appBarFilterIcon,
        onTap: () {},
        size: Utils.iconNormal,
        color: AppColor.bottomNavBarItemColor,
      );
}
