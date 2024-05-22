import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ChatbotPage extends StatelessWidget {
  ChatbotPage({Key? key})
      : super(
          key: key,
        );

  TextEditingController promptoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray10001,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              Container(
                height: 18.v,
                width: 408.h,
                decoration: BoxDecoration(
                  color: appTheme.gray10001,
                ),
              ),
              _buildHeaderSection(context),
              SizedBox(height: 27.v),
              CustomImageView(
                imagePath: ImageConstant.img20200517111004104,
                height: 339.v,
                width: 254.h,
              ),
              SizedBox(height: 8.v),
              Text(
                " “Block statue of Nes-Amun”",
                style: CustomTextStyles.titleMediumInter,
              ),
              SizedBox(height: 17.v),
              Container(
                width: 315.h,
                margin: EdgeInsets.only(
                  left: 61.h,
                  right: 53.h,
                ),
                child: Text(
                  "A block statue of a priest serving the god Monthu, Lord of Thebes",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.titleMediumInter.copyWith(
                    height: 1.25,
                  ),
                ),
              ),
              SizedBox(height: 40.v),
              Text(
                "Type something like :",
                style: CustomTextStyles.titleMediumInterGray50001,
              ),
              SizedBox(height: 6.v),
              _buildWhoBuildSection(context),
              SizedBox(height: 12.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 80.h,
                  right: 44.h,
                ),
                child: CustomTextFormField(
                  controller: promptoneController,
                  hintText: "Ask me anything... ",
                  textInputAction: TextInputAction.done,
                  alignment: Alignment.centerRight,
                ),
              ),
              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHeaderSection(BuildContext context) {
    return SizedBox(
      height: 53.v,
      width: 429.h,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 3.v),
              padding: EdgeInsets.symmetric(
                horizontal: 6.h,
                vertical: 7.v,
              ),
              decoration: AppDecoration.fillGray,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowLeftBlack900,
                    height: 22.v,
                    width: 27.h,
                    margin: EdgeInsets.only(
                      top: 5.v,
                      bottom: 7.v,
                    ),
                    onTap: () {
                      onTapImgArrowleftone(context);
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 80.h,
                      top: 3.v,
                    ),
                    child: Text(
                      "Antiquities Museum",
                      style: CustomTextStyles.titleLargeDMSerifDisplayGray900,
                    ),
                  )
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgMuseumLogo,
            height: 53.v,
            width: 59.h,
            radius: BorderRadius.circular(
              1.h,
            ),
            alignment: Alignment.centerRight,
            margin: EdgeInsets.only(right: 22.h),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildWhoBuildSection(BuildContext context) {
    return Container(
      width: 364.h,
      margin: EdgeInsets.only(
        left: 39.h,
        right: 27.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 88.h,
        vertical: 24.v,
      ),
      decoration: AppDecoration.fillGray100.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(height: 9.v),
          Text(
            "Who build this Statue?",
            style: CustomTextStyles.titleMediumInterGray50001Medium,
          )
        ],
      ),
    );
  }

  /// Navigates back to the previous screen.
  onTapImgArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
