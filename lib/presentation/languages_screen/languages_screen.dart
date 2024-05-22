import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'widgets/languageselecto_item_widget.dart';

class LanguagesScreen extends StatelessWidget {
  const LanguagesScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray10001,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Container(
                height: 18.v,
                width: 429.h,
                decoration: BoxDecoration(
                  color: appTheme.gray10001,
                ),
              ),
              _buildBackHome(context),
              SizedBox(height: 27.v),
              Text(
                "Choose Language",
                style: CustomTextStyles.titleLargeSemiBold,
              ),
              SizedBox(height: 49.v),
              _buildLanguageSelecto(context)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBackHome(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 6.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.fillGray,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgArrowLeft,
            height: 25.v,
            width: 30.h,
            margin: EdgeInsets.only(top: 5.v),
            onTap: () {
              onTapImgArrowleftone(context);
            },
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 2.h,
              top: 7.v,
            ),
            child: Text(
              "Home",
              style: CustomTextStyles.bodyMediumRobotoBlack900,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLanguageSelecto(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 44.h,
        right: 53.h,
      ),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 149.v,
          crossAxisCount: 2,
          mainAxisSpacing: 31.h,
          crossAxisSpacing: 31.h,
        ),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 6,
        itemBuilder: (context, index) {
          return LanguageselectoItemWidget(
            onTapColumnlanguaget: () {
              onTapColumnlanguaget(context);
            },
          );
        },
      ),
    );
  }

  /// Navigates back to the previous screen.
  onTapImgArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  onTapColumnlanguaget(BuildContext context) {}
}
