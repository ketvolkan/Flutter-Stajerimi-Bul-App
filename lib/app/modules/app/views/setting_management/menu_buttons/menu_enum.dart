import 'package:stajyerimibul/app/modules/app/views/setting_management/menu_buttons/menu_button.dart';

enum MenuEnums {
  Base, //? Başlangıç
  Setting, //? Ayarlar
  Contact, //? İletişim
}

//? Ayarlardaki Sayfalara Giden Butonlar Burdan Ayarlanır(Giticeği sayfa,açıcağı buton grubu vb)
class MenuList {
  static List<MenuButton> getCurrentMenuItem(MenuEnums menuEnums) {
    List<MenuButton> currentMenuItems = [];
    switch (menuEnums) {
      //? Ayarlar ilk açıldığında çıkan Menu grubu
      case MenuEnums.Base:
        currentMenuItems = <MenuButton>[
          MenuButton(
            title: "İletişim",
            menuReferance: MenuEnums.Contact,
          ),
          MenuButton(
            title: "Ayarlar",
            menuReferance: MenuEnums.Setting,
          ),
        ];
        break;
      case MenuEnums.Setting:
        currentMenuItems = <MenuButton>[
          MenuButton(
            title: "Geri Dön",
            onLeading: false,
            menuReferance: MenuEnums.Base,
            isBack: true,
          ),
          MenuButton(title: "Tema Ayarları"),
          MenuButton(title: "Uygulama Ayarları"),
          MenuButton(title: "Profil Ayarları"),
        ];
        break;
      case MenuEnums.Contact:
        currentMenuItems = <MenuButton>[
          MenuButton(
            title: "Geri Dön",
            onLeading: false,
            menuReferance: MenuEnums.Base,
            isBack: true,
          ),
          MenuButton(title: "Sosyal Kanallar"),
          MenuButton(title: "İletişim Hattı"),
          MenuButton(title: "Canlı Destek"),
          MenuButton(title: "Falanlar Filanlar"),
        ];
        break;
      default:
    }
    return currentMenuItems;
  }
}
