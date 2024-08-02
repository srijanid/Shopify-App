import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopify/utils/constants/colors.dart';
import 'package:shopify/utils/constants/sizes.dart';
import 'package:shopify/utils/device/device_utility.dart';
import 'package:shopify/utils/helpers/helper_functions.dart';

class TSearchContainer extends StatelessWidget {
  const TSearchContainer({
    super.key,
    required this.text,
    this.icon= Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
  });

  final String text;
  final IconData? icon;
  final bool showBackground,showBorder;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
        child: Container(
          width: TDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(TSizes.md),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
            border: showBorder? Border.all(color: TColors.grey):null,
            color: showBackground? dark?  TColors.dark : TColors.light : Colors.transparent,
          ),
          child:  Row(
            children: [
              Icon(icon,color: dark? TColors.white:TColors.darkerGrey),
              const SizedBox(width: TSizes.spaceBtwItems),
              Text(text,style: Theme.of(context).textTheme.bodySmall!.apply(color: TColors.darkGrey)),
            ],
          ),
        ),
      ),
    );
  }
}
