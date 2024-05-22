import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class MapPage extends StatelessWidget {
  MapPage({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: appTheme.whiteA70001,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: appTheme.whiteA70001,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup164,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            decoration: AppDecoration.fillWhiteA.copyWith(
              image: DecorationImage(
                image: AssetImage(
                  ImageConstant.imgGroup164,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildStacklinkedin(context),
                Spacer(),
                Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    height: 85.v,
                    width: 22.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgLinkedinBlack900,
                          height: 85.v,
                          width: 22.h,
                          alignment: Alignment.center,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgLinkedinBlack900,
                          height: 85.v,
                          width: 22.h,
                          alignment: Alignment.center,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 62.v),
                CustomImageView(
                  imagePath: ImageConstant.imgLinkedin,
                  height: 85.v,
                  width: 60.h,
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 155.h),
                ),
                SizedBox(height: 74.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    height: 85.v,
                    child: VerticalDivider(
                      width: 1.h,
                      thickness: 1.v,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStacklinkedin(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        height: 160.v,
        width: 413.h,
        margin: EdgeInsets.only(left: 17.h),
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgLinkedinBlack900,
              height: 85.v,
              width: 22.h,
              alignment: Alignment.bottomRight,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgLinkedinBlack900,
              height: 74.v,
              width: 60.h,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 133.h),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(right: 18.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomTextFormField(
                      controller: searchController,
                      hintText: "Search...",
                      textInputAction: TextInputAction.done,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 30.h,
                        vertical: 13.v,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
