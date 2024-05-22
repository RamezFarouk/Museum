import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class JapanesHomePageScreen extends StatelessWidget {
  JapanesHomePageScreen({Key? key})
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
                  padding: EdgeInsets.only(left: 74.h),
                  child: Text(
                    "徴収",
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                SizedBox(height: 28.v),
                _buildColumnCardNormal2(context),
                SizedBox(height: 33.v),
                _buildRowCardNormal(context),
                SizedBox(height: 14.v),
                Padding(
                  padding: EdgeInsets.only(left: 69.h),
                  child: Text(
                    "その他の活動",
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
      title: AppbarTitle(
        text: "骨董品博物館",
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
  Widget _buildColumnCardNormal2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 14.h,
        right: 37.h,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 1.v,
              bottom: 12.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgCardNormal,
                  height: 86.v,
                  width: 58.h,
                  radius: BorderRadius.circular(
                    20.h,
                  ),
                  margin: EdgeInsets.only(right: 15.h),
                ),
                SizedBox(height: 7.v),
                Text(
                  "古代エジプトの骨董品",
                  style: theme.textTheme.bodySmall,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              top: 1.v,
              bottom: 14.v,
            ),
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
                ),
                SizedBox(height: 6.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "死後の世界で",
                    style: theme.textTheme.bodySmall,
                  ),
                )
              ],
            ),
          ),
          Spacer(
            flex: 51,
          ),
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 86.v,
                  width: 58.h,
                  margin: EdgeInsets.only(left: 1.h),
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
                SizedBox(height: 3.v),
                SizedBox(
                  width: 69.h,
                  child: Text(
                    "グレコローマン\r\nアニケス",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodySmall,
                  ),
                )
              ],
            ),
          ),
          Spacer(
            flex: 48,
          ),
          Expanded(
            child: _buildColumnCardNormal(
              context,
              image: ImageConstant.imgCardNormal1,
              text: "ビザンチン\r\n 美術",
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowCardNormal(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 5.h,
        right: 32.h,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgCardNormal2,
                height: 86.v,
                width: 58.h,
                radius: BorderRadius.circular(
                  20.h,
                ),
                margin: EdgeInsets.only(right: 24.h),
              ),
              SizedBox(height: 1.v),
              SizedBox(
                width: 117.h,
                child: Text(
                  "ブリティッシュ・エアウェイズ(BA)サイト\r\n骨董 品",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodySmall,
                ),
              )
            ],
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 12.h,
                bottom: 13.v,
              ),
              child: _buildColumnCardNormal(
                context,
                image: ImageConstant.imgCardNormal3,
                text: "水中\r\n骨董 品",
              ),
            ),
          ),
          Spacer(
            flex: 47,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom: 12.v),
              child: _buildColumnCardNormal(
                context,
                image: ImageConstant.imgCardNormal4,
                text: "ネルソン島\r\n徴収",
              ),
            ),
          ),
          Spacer(
            flex: 52,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 12.v),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgCardNormal5,
                  height: 86.v,
                  width: 58.h,
                  radius: BorderRadius.circular(
                    20.h,
                  ),
                ),
                SizedBox(height: 4.v),
                SizedBox(
                  width: 58.h,
                  child: Text(
                    "イスラム教の\r\n骨董 品",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodySmall,
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
  Widget _buildColumnCardNormal(
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
        SizedBox(height: 2.v),
        SizedBox(
          width: 32.h,
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
