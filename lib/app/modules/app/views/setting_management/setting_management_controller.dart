import 'package:get/get.dart';

import 'menu_buttons/menu_button.dart';
import 'menu_buttons/menu_enum.dart';

class SettingManagementController extends GetxController {
  final Rx<MenuEnums> _selectedMenuListName = MenuEnums.Base.obs;
  MenuEnums get selectedMenuListName => _selectedMenuListName.value;
  set selectedMenuListName(MenuEnums val) => _selectedMenuListName.value = val;

  final RxList<MenuButton> _selectedMenuItems = RxList<MenuButton>([]);
  List<MenuButton> get selectedMenuItems => _selectedMenuItems;
  set selectedMenuItems(List<MenuButton> val) => _selectedMenuItems.value = val;

  @override
  void onInit() {
    ever(_selectedMenuListName, (MenuEnums value) {
      selectedMenuItems = MenuList.getCurrentMenuItem(selectedMenuListName);
      _selectedMenuItems.refresh();
    });

    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    selectedMenuItems = MenuList.getCurrentMenuItem(selectedMenuListName);
  }
}
