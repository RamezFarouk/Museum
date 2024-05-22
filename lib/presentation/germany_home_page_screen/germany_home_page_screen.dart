import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class GermanyHomePageScreen extends StatelessWidget {
  GermanyHomePageScreen({Key? key})
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
                SizedBox(height: 24.v),
                Padding(
                  padding: EdgeInsets.only(left: 39.h),
                  child: Text(
                    "Sammlung",
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                SizedBox(height: 25.v),
                _buildRow(context),
                SizedBox(height: 27.v),
                Padding(
                  padding: EdgeInsets.only(left: 30.h),
                  child: Text(
                    "Sonstige Aktivitäten",
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                SizedBox(height: 14.v),
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
        text: "Antiquitätenmuseum",
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
  Widget _buildRow(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 31.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 1.v),
              child: Column(
                children: [
                  SizedBox(
                    width: 166.h,
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
                            ),
                            SizedBox(height: 8.v),
                            SizedBox(
                              width: 68.h,
                              child: Text(
                                "altägyptische Antiquitäten",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.bodySmall,
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 18.v),
                          child: _buildColumnCardNormal(
                            context,
                            cardnormal: ImageConstant.imgCardNormal86x58,
                            eingetaucht: "Im Jenseits",
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 29.v),
                  Container(
                    width: 161.h,
                    margin: EdgeInsets.only(left: 3.h),
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
                                alignment: Alignment.centerRight,
                              ),
                              SizedBox(height: 2.v),
                              SizedBox(
                                width: 61.h,
                                child: Text(
                                  " BA-Standort\r\nAntiquitäten",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.bodySmall,
                                ),
                              )
                            ],
                          ),
                        ),
                        _buildColumnCardNormal(
                          context,
                          cardnormal: ImageConstant.imgCardNormal3,
                          eingetaucht: "Eingetaucht \r\nAntiquitäten",
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 18.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    width: 178.h,
                    margin: EdgeInsets.only(right: 3.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 1.v),
                          child: Column(
                            children: [
                              Container(
                                height: 86.v,
                                width: 58.h,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 7.h,
                                  vertical: 5.v,
                                ),
                                decoration: AppDecoration.outlineBlack.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder20,
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
                                width: 99.h,
                                child: Text(
                                  "Griechisch-römisch \r\nAniques",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.bodySmall,
                                ),
                              )
                            ],
                          ),
                        ),
                        _buildColumnCardNormal1(
                          context,
                          cardnormal: ImageConstant.imgCardNormal1,
                          nelsoninsel: "Byzantinisch\r\n Antiquitäten",
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 33.v),
                  Container(
                    width: 169.h,
                    margin: EdgeInsets.only(left: 13.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 1.v),
                          child: _buildColumnCardNormal1(
                            context,
                            cardnormal: ImageConstant.imgCardNormal4,
                            nelsoninsel: "Nelson-Insel\r\nSammlung",
                          ),
                        ),
                        Column(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgCardNormal5,
                              height: 86.v,
                              width: 58.h,
                              radius: BorderRadius.circular(
                                20.h,
                              ),
                            ),
                            SizedBox(height: 5.v),
                            SizedBox(
                              width: 60.h,
                              child: Text(
                                "Islamisch \r\nAntiquitäten",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.bodySmall,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
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
  Widget _buildColumnCardNormal(
    BuildContext context, {
    required String cardnormal,
    required String eingetaucht,
  }) {
    return Column(
      children: [
        CustomImageView(
          imagePath: cardnormal,
          height: 86.v,
          width: 58.h,
          radius: BorderRadius.circular(
            20.h,
          ),
        ),
        SizedBox(height: 3.v),
        SizedBox(
          width: 62.h,
          child: Text(
            eingetaucht,
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

  /// Common widget
  Widget _buildColumnCardNormal1(
    BuildContext context, {
    required String cardnormal,
    required String nelsoninsel,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: cardnormal,
          height: 86.v,
          width: 58.h,
          radius: BorderRadius.circular(
            20.h,
          ),
          alignment: Alignment.centerRight,
        ),
        SizedBox(height: 4.v),
        SizedBox(
          width: 60.h,
          child: Text(
            nelsoninsel,
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
