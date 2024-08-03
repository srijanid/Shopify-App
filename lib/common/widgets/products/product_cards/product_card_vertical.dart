import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopify/common/styles/shadows.dart';
import 'package:shopify/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:shopify/common/widgets/images/t_rounded_image.dart';
import 'package:shopify/utils/constants/colors.dart';
import 'package:shopify/utils/constants/image_strings.dart';
import 'package:shopify/utils/constants/sizes.dart';
import 'package:shopify/utils/helpers/helper_functions.dart';

import '../../icons/t_circular_icon.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      width: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [TShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: dark ? TColors.darkerGrey : TColors.white,
      ),
      child: Column(
        children: [
          ///Thumbnail,wishlist button, discount tag
          TCircularContainer(
            height: 180,
            padding: const EdgeInsets.all(TSizes.sm),
            backgroundColor: dark? TColors.dark : TColors.light,
            child:  Stack(
              children:  [
                ///Thumbnail
                const TRoundedImage(imageUrl: TImages.productImage1, applyImageRadius: true),
                ///Sale tag
                Positioned(
                  top: 12,
                  child: TCircularContainer(
                    radius: TSizes.sm,
                    backgroundColor: TColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(horizontal: TSizes.sm,vertical: TSizes.xs),
                    child: Text('25%',style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black)),
                  ),
                ),

                ///Favourite Icon Button
                const Positioned(
                  top: 0,
                  right: 0,
                  child:  TCircularIcon(
                      icon: Iconsax.heart5,color: Colors.red),
                ),
              ],
            ) ,
          ),
          /// Details
           Padding(
            padding: EdgeInsets.only(left: TSizes.sm),
            child: Column(
              children: [
                Text('Green Nike Air Shoes',
                style: Theme.of(context).textTheme.labelLarge,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  textAlign: TextAlign.left,
                  
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}


