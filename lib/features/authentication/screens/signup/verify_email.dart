import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopify/common/widgets/success_screen/success_screen.dart';
import 'package:shopify/features/authentication/screens/login/login.dart';
import 'package:shopify/utils/constants/image_strings.dart';
import 'package:shopify/utils/constants/text_strings.dart';
import 'package:shopify/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/sizes.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(onPressed: () => Get.offAll(()=> const LoginScreen()), icon: const Icon(CupertinoIcons.clear))
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                ///Image
                Image(image: const AssetImage(TImages.deliveredEmailIllustration),width: THelperFunctions.screenWidth() * 0.7),
                const SizedBox(height: TSizes.spaceBtwSections),
                ///Title & SubTitle
                Text(TTexts.confirmEmail,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center),
                const SizedBox(height: TSizes.spaceBtwItems),
                Text(TTexts.sampleEmail,style: Theme.of(context).textTheme.labelLarge,textAlign: TextAlign.center),
                const SizedBox(height: TSizes.spaceBtwItems),
                Text(TTexts.confirmEmailSubTitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center),
                const SizedBox(height: TSizes.spaceBtwItems),
                ///Buttons
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => Get.to(() => SuccessScreen(
                        image: TImages.staticSuccessIllustration,
                        title: TTexts.yourAccountCreatedTitle,
                        subTitle: TTexts.yourAccountCreatedSubTitle,
                        onPressed: () => Get.to(() => const LoginScreen()),
                      ),
                      ),
                      child: const Text(TTexts.tContinue)),
              ),
                const SizedBox(height: TSizes.spaceBtwItems),
                SizedBox(width: double.infinity,child: TextButton(onPressed: (){},child: const Text(TTexts.resendEmail))),
              ],
            ),
          ),
        ),
    );
  }
}