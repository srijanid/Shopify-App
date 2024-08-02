import 'package:flutter/material.dart';
import 'package:shopify/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:shopify/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:shopify/common/widgets/texts/section_heading.dart';
import 'package:shopify/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:shopify/utils/constants/image_strings.dart';
import 'package:shopify/utils/constants/sizes.dart';

import 'widgets/home_categories.dart';
import 'widgets/promo_slider.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
     //appBar: TAppBar(),
     body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
                child: Column(
                  children: [
                    SizedBox(height: TSizes.spaceBtwItems),
                    ///Appbar--
                    THomeAppBar(),
                    SizedBox(height: TSizes.spaceBtwSections,),
                    ///Searchbar--
                    TSearchContainer(text: 'Search in Store'),
                    SizedBox(height: TSizes.spaceBtwSections,),
                    ///Categories--
                    Padding(
                      padding: EdgeInsets.only(left: TSizes.defaultSpace),
                      child: Column(
                        children: [
                          ///Heading
                          TSectionHeading(title: 'Popular Categories',showActionButton: false,textColor: Colors.white,),
                          SizedBox(height: TSizes.spaceBtwItems),
                          ///Categories
                          THomeCategories(),
                        ],
                      ),
                    )
                  ],
                )
            ),

            ///Body -- below categories
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: TPromoSlider(banners: [
                TImages.promoBanner1,
                TImages.promoBanner2,
                TImages.promoBanner3,
                TImages.promoBanner4,
              ],),
            )
          ],
        ),
      ),
    );
  }
}











