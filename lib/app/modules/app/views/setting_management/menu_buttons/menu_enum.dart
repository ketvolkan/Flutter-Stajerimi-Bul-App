// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
            title: AppConstants.contact.tr,
            menuReferance: MenuEnums.Contact,
          ),
          MenuButton(
            title: AppConstants.appSetting.tr,
            menuReferance: MenuEnums.Setting,
          ),
          MenuButton(
            title: AppConstants.aboutApp.tr,
            onLeading: false,
          ),
          MenuButton(
            title: AppConstants.accountSetting.tr,
            menuReferance: MenuEnums.AccountSetting,
          ),
          MenuButton(
            title: AppConstants.exitAccount.tr,
            customLeadingIcon: Icons.close,
            onTap: () {},
          ),
        ];
        break;
      case MenuEnums.Setting:
        currentMenuItems = <MenuButton>[
          MenuButton(
            title: AppConstants.getBack.tr,
            onLeading: false,
            menuReferance: MenuEnums.Base,
            isBack: true,
          ),
          MenuButton(title: AppConstants.notificationSetting.tr, onLeading: false),
        ];
        break;
      case MenuEnums.AccountSetting:
        currentMenuItems = <MenuButton>[
          MenuButton(
            title: AppConstants.getBack.tr,
            onLeading: false,
            menuReferance: MenuEnums.Base,
            isBack: true,
          ),
          MenuButton(
            title: AppConstants.freezeAccount.tr,
            customLeadingIcon: Icons.icecream_outlined,
            onTap: () {},
          ),
          MenuButton(
            title: AppConstants.deleteAccount.tr,
            customLeadingIcon: Icons.delete_forever_outlined,
            onTap: () {},
          ),
        ];
        break;
      case MenuEnums.Contact:
        currentMenuItems = <MenuButton>[
          MenuButton(
            title: AppConstants.getBack.tr,
            onLeading: false,
            menuReferance: MenuEnums.Base,
            isBack: true,
          ),
          MenuButton(
            title: AppConstants.socailNetwork.tr,
            menuReferance: MenuEnums.ContactMore,
          ),
          MenuButton(
            title: AppConstants.contactNetwork.tr,
            onLeading: false,
          ),
        ];
        break;
      case MenuEnums.ContactMore:
        currentMenuItems = <MenuButton>[
          MenuButton(
            title: AppConstants.getBack.tr,
            onLeading: false,
            menuReferance: MenuEnums.Contact,
            isBack: true,
          ),
          MenuButton(title: AppConstants.instagram.tr, onLeading: false),
          MenuButton(title: AppConstants.twitter.tr, onLeading: false),
          MenuButton(title: AppConstants.website.tr, onLeading: false),
        ];
        break;
      default:
    }
    return currentMenuItems;
  }
}
