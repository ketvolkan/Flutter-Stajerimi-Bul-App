import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/utils/utils.dart';
import '../buttons/custom_text_button.dart';
import '../fabButton/custom_floating_action_button_controller.dart';

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
                    color: Get.theme.primaryColor, borderRadius: BorderRadius.all(Radius.circular(Utils.extraHighRadius))),
                child: SizedBox(
                  height: Get.width * 0.75,
                  width: Get.width * 0.9,
                  child: Padding(
                      padding: EdgeInsets.all(Utils.normalPadding),
                      child: Column(
                        children: const [
                          CustomTextButton(text: "İlan Ver", textColor: Colors.white),
                          CustomTextButton(text: "İlanlarımı Gör", textColor: Colors.white),
                          CustomTextButton(text: "Bekleyen İstekler", textColor: Colors.white),
                          CustomTextButton(text: "Rastgele Birşeyler", textColor: Colors.white)
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
