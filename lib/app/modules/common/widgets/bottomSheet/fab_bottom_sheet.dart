import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stajyerimibul/app/modules/common/widgets/buttons/custom_text_button.dart';
import 'package:stajyerimibul/app/modules/common/widgets/fabButton/custom_floating_action_button_controller.dart';
import 'package:stajyerimibul/core/utils/utils.dart';

class FabBottomSheet extends StatelessWidget {
  const FabBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CustomFloatingActionButtonController controller = Get.find();
    return Obx(
      () => Positioned(
        bottom: controller.isClicked ? Get.width * 0.2 : -Get.height,
        child: AnimatedOpacity(
          opacity: controller.isClicked ? 1.0 : 0,
          duration: controller.duration,
          child: SizedBox(
            width: Get.width,
            child: Center(
              child: DecoratedBox(
                decoration: BoxDecoration(
                    color: Get.theme.primaryColor, borderRadius: BorderRadius.all(Radius.circular(Utils.veryHighBorderRadius))),
                child: SizedBox(
                  height: Get.width * 0.75,
                  width: Get.width * 0.9,
                  child: Padding(
                      padding: EdgeInsets.all(Utils.normalPadding),
                      child: Column(
                        children: const [
                          CustomTextButton(text: "İlan Ver"),
                          CustomTextButton(text: "İlanlarımı Gör"),
                          CustomTextButton(text: "Bekleyen İstekler"),
                          CustomTextButton(text: "Rastgele Birşeyler")
                        ],
                      )),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
