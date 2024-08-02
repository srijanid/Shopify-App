import 'package:flutter/material.dart';
import 'package:shopify/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:shopify/utils/constants/colors.dart';
import 'package:shopify/utils/constants/text_strings.dart';

import '../../../../../common/widgets/appbar/appbar.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Column(
        children: [
          Text(TTexts.homeAppbarTitle,style: Theme.of(context).textTheme.labelMedium!.apply(color: TColors.grey)),
          Text(TTexts.homeAppbarSubTitle,style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.white)),
        ],
      ),
      actions: [
        TCartCounterIcon(onPressed: () {  }, iconColor: TColors.white)
      ],
    );
  }
}
