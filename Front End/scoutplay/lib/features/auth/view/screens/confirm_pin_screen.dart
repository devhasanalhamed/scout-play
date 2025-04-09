import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:scoutplay/core/common/appbars/custom_app_bar.dart';
import 'package:scoutplay/core/common/buttons/clickable_rich_text.dart';
import 'package:scoutplay/core/common/buttons/custom_elevated_button.dart';
import 'package:scoutplay/core/common/layouts/custom_padding.dart';
import 'package:scoutplay/core/common/texts/font_size_factor.dart';
import 'package:scoutplay/core/common/texts/scaled_text.dart';
import 'package:scoutplay/core/routes/app_routes.dart';
import 'package:scoutplay/core/utils/size_config.dart';

class ConfirmPinScreen extends StatelessWidget {
  static String routeName = '/confirm_pin_screen';
  const ConfirmPinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Confirm Pin',
        automaticallyImplyLeading: false,
      ),
      body: CustomPadding.bottomLeftRight(
        left: 32,
        right: 32,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: SizeConfig.safeBlockVertical * 15),
            ScaledText(
              text: 'SMS has been sent',
              fontSizeFactor: FontSizeFactor.large,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(height: 32),
            Pinput(
              defaultPinTheme: PinTheme(
                width: 64,
                height: 72,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                textStyle: TextStyle(
                  fontSize: FontSizeFactor.fontSize(
                    context,
                    FontSizeFactor.large,
                  ),
                ),
              ),
              length: 4,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            ),
            const SizedBox(height: 32),
            CustomElevatedButton(
              text: 'Continue',
              onPressed: () {
                AppRoutes.pushNamed(context, AppRoutes.homeScreen);
              },
            ),
            const SizedBox(height: 16),
            ClickableRichText(
              onPressed: () {},
              firstText: 'Didn\'t receive code? ',
              secondText: 'Resend',
            ),
          ],
        ),
      ),
    );
  }
}
