import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopify/common/styles/spacing_styles.dart';
import 'package:shopify/common/widgets/login_signup/form_divider.dart';
import 'package:shopify/common/widgets/login_signup/social_buttons.dart';
import 'package:shopify/features/authentication/screens/login/widgets/login_form.dart';
import 'package:shopify/features/authentication/screens/login/widgets/login_header.dart';
import 'package:shopify/utils/constants/sizes.dart';
import 'package:shopify/utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //Logo, Title & SubTitle
              const TLoginHeader(),
              //Form
              const TLoginForm(),
              //Divider
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),
              const SizedBox(height: TSizes.spaceBtwSections),
              //Footer
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
