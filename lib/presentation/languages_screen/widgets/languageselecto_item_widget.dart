import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class LanguageselectoItemWidget extends StatelessWidget {
  LanguageselectoItemWidget({Key? key, this.onTapColumnlanguaget})
      : super(
          key: key,
        );

  VoidCallback? onTapColumnlanguaget;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            onTapColumnlanguaget?.call();
          },
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 41.h,
              vertical: 15.v,
            ),
            decoration: AppDecoration.gradientBlueToBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder50,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse1,
                  height: 56.v,
                  width: 63.h,
                  radius: BorderRadius.circular(
                    28.h,
                  ),
                ),
                SizedBox(height: 13.v),
                Text(
                  "English",
                  style: CustomTextStyles.titleLargeAbel,
                ),
                SizedBox(height: 14.v)
              ],
            ),
          ),
        )
      ],
    );
  }
}
