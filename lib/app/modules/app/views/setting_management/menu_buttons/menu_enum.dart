// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:stajyerimibul/core/constants/app_constants.dart';

import 'menu_button.dart';

enum MenuEnums {
  Base, //? Başlangıç
  Setting, //? Ayarlar
  Contact, //? İletişim
  ContactMore, //? Sosyal Kanallar
  AccountSetting //? Hesap Ayarları
}
enum BottomNavbars { Profile, Home, Search, Setting }

//? Ayarlardaki Sayfalara Giden Butonlar Burdan Ayarlanır(Giticeği sayfa,açıcağı buton grubu vb)
class MenuList {
  static List<MenuButton> getCurrentMenuItem(MenuEnums menuEnums) {
    List<MenuButton> currentMenuItems = [];
    switch (menuEnums) {
      //? Ayarlar ilk açıldığında çıkan Menu grubu
      case MenuEnums.Base:
        currentMenuItems = <MenuButton>[
          MenuButton(
            title: AppConstants.contact,
            menuReferance: MenuEnums.Contact,
          ),
          MenuButton(
            title: AppConstants.appSetting,
            menuReferance: MenuEnums.Setting,
          ),
          MenuButton(
            title: AppConstants.aboutApp,
            onLeading: false,
          ),
          MenuButton(
            title: AppConstants.accountSetting,
            menuReferance: MenuEnums.AccountSetting,
          ),
          MenuButton(
            title: AppConstants.exitAccount,
            customLeadingIcon: Icons.close,
            onTap: () {},
          ),
        ];
        break;
      case MenuEnums.Setting:
        currentMenuItems = <MenuButton>[
          MenuButton(
            title: AppConstants.getBack,
            onLeading: false,
            menuReferance: MenuEnums.Base,
            isBack: true,
          ),
          MenuButton(title: AppConstants.themeSetting, onLeading: false),
          MenuButton(title: AppConstants.notificationSetting, onLeading: false),
        ];
        break;
      case MenuEnums.AccountSetting:
        currentMenuItems = <MenuButton>[
          MenuButton(
            title: AppConstants.getBack,
            onLeading: false,
            menuReferance: MenuEnums.Base,
            isBack: true,
          ),
          MenuButton(
            title: AppConstants.freezeAccount,
            customLeadingIcon: Icons.icecream_outlined,
            onTap: () {},
          ),
          MenuButton(
            title: AppConstants.deleteAccount,
            customLeadingIcon: Icons.delete_forever_outlined,
            onTap: () {},
          ),
        ];
        break;
      case MenuEnums.Contact:
        currentMenuItems = <MenuButton>[
          MenuButton(
            title: AppConstants.getBack,
            onLeading: false,
            menuReferance: MenuEnums.Base,
            isBack: true,
          ),
          MenuButton(
            title: AppConstants.socailNetwork,
            menuReferance: MenuEnums.ContactMore,
          ),
          MenuButton(
            title: AppConstants.contactNetwork,
            onLeading: false,
          ),
        ];
        break;
      case MenuEnums.ContactMore:
        currentMenuItems = <MenuButton>[
          MenuButton(
            title: AppConstants.getBack,
            onLeading: false,
            menuReferance: MenuEnums.Contact,
            isBack: true,
          ),
          MenuButton(title: AppConstants.instagram, onLeading: false),
          MenuButton(title: AppConstants.twitter, onLeading: false),
          MenuButton(title: AppConstants.website, onLeading: false),
        ];
        break;
      default:
    }
    return currentMenuItems;
  }
}
