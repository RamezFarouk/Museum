import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class FrenchHomePageScreen extends StatelessWidget {
  FrenchHomePageScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray100,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 18.v,
                  width: 429.h,
                  decoration: BoxDecoration(
                    color: appTheme.gray100,
                  ),
                ),
                SizedBox(height: 70.v),
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle3352,
                  height: 209.v,
                  width: 407.h,
                  radius: BorderRadius.circular(
                    30.h,
                  ),
                  alignment: Alignment.center,
                ),
                SizedBox(height: 21.v),
                Padding(
                  padding: EdgeInsets.only(left: 44.h),
                  child: Text(
                    "collection",
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                SizedBox(height: 28.v),
                _buildColumnOne(context),
                SizedBox(height: 24.v),
                Padding(
                  padding: EdgeInsets.only(left: 52.h),
                  child: Text(
                    "Autres activités",
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                SizedBox(height: 17.v),
                _buildStackCreateFrom(context)
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 42.h),
          child: _buildBottomBar(context),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 36.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMegaphone,
        margin: EdgeInsets.only(
          left: 15.h,
          top: 15.v,
          bottom: 15.v,
        ),
        onTap: () {
          onTapMegaphoneone(context);
        },
      ),
      title: AppbarSubtitle(
        text: "Musée des Antiquités",
        margin: EdgeInsets.only(left: 78.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgMuseumLogo,
          margin: EdgeInsets.symmetric(horizontal: 21.h),
        )
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildColumnOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 10.h,
        right: 32.h,
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 1.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  width: 195.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgCardNormal,
                            height: 86.v,
                            width: 58.h,
                            radius: BorderRadius.circular(
                              20.h,
                            ),
                            margin: EdgeInsets.only(right: 19.h),
                          ),
                          SizedBox(height: 6.v),
                          SizedBox(
                            width: 108.h,
                            child: Text(
                              "Antiquités de l’Égypte ancienne",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.bodySmall,
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 16.v),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgCardNormal86x58,
                              height: 86.v,
                              width: 58.h,
                              radius: BorderRadius.circular(
                                20.h,
                              ),
                              margin: EdgeInsets.only(left: 2.h),
                            ),
                            SizedBox(height: 5.v),
                            Text(
                              "Dans l’au-delà",
                              style: theme.textTheme.bodySmall,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 32.v),
                Container(
                  width: 154.h,
                  margin: EdgeInsets.only(
                    left: 29.h,
                    right: 11.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 1.v),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgCardNormal2,
                              height: 86.v,
                              width: 58.h,
                              radius: BorderRadius.circular(
                                20.h,
                              ),
                            ),
                            SizedBox(height: 2.v),
                            SizedBox(
                              width: 49.h,
                              child: Text(
                                " BA Site\r\nAntiquités",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.bodySmall,
                              ),
                            )
                          ],
                        ),
                      ),
                      _buildByzantin(
                        context,
                        image: ImageConstant.imgCardNormal3,
                        text: "Submergé \r\nAntiquités",
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 19.h),
            child: Column(
              children: [
                Container(
                  width: 166.h,
                  margin: EdgeInsets.only(right: 5.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 1.v),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 86.v,
                              width: 58.h,
                              margin: EdgeInsets.only(left: 8.h),
                              padding: EdgeInsets.symmetric(
                                horizontal: 7.h,
                                vertical: 5.v,
                              ),
                              decoration: AppDecoration.outlineBlack.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder20,
                              ),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgRuins,
                                height: 73.v,
                                width: 42.h,
                                alignment: Alignment.center,
                              ),
                            ),
                            SizedBox(height: 4.v),
                            SizedBox(
                              width: 79.h,
                              child: Text(
                                "Gréco-romaine \r\naniques",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.bodySmall,
                              ),
                            )
                          ],
                        ),
                      ),
                      _buildByzantin(
                        context,
                        image: ImageConstant.imgCardNormal1,
                        text: "Byzantin\r\n Antiquités",
                      )
                    ],
                  ),
                ),
                SizedBox(height: 33.v),
                Container(
                  width: 163.h,
                  margin: EdgeInsets.only(left: 8.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: 1.v,
                            right: 22.h,
                          ),
                          child: _buildByzantin(
                            context,
                            image: ImageConstant.imgCardNormal4,
                            text: "Île Nelson\r\nCollection",
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 22.h),
                          child: _buildByzantin(
                            context,
                            image: ImageConstant.imgCardNormal5,
                            text: "Islamique \r\nAntiquités",
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStackCreateFrom(BuildContext context) {
    return SizedBox(
      height: 180.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 180.v,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: appTheme.gray100,
                borderRadius: BorderRadius.circular(
                  30.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(
                left: 21.h,
                top: 4.v,
                bottom: 42.v,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: CustomImageView(
                      imagePath: ImageConstant.imgRectangle34131x236,
                      height: 131.v,
                      width: 236.h,
                      radius: BorderRadius.circular(
                        20.h,
                      ),
                      margin: EdgeInsets.only(
                        top: 2.v,
                        right: 16.h,
                      ),
                    ),
                  ),
                  Expanded(
                    child: CustomImageView(
                      imagePath: ImageConstant.imgRectangle35131x236,
                      height: 131.v,
                      width: 236.h,
                      radius: BorderRadius.circular(
                        20.h,
                      ),
                      margin: EdgeInsets.only(
                        left: 16.h,
                        bottom: 2.v,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }

  /// Common widget
  Widget _buildByzantin(
    BuildContext context, {
    required String image,
    required String text,
  }) {
    return Column(
      children: [
        CustomImageView(
          imagePath: image,
          height: 86.v,
          width: 58.h,
          radius: BorderRadius.circular(
            20.h,
          ),
        ),
        SizedBox(height: 5.v),
        SizedBox(
          width: 49.h,
          child: Text(
            text,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodySmall!.copyWith(
              color: appTheme.black900,
            ),
          ),
        )
      ],
    );
  }

  onTapMegaphoneone(BuildContext context) {}
}
