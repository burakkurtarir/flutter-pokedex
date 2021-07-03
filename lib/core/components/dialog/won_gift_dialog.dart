import 'package:flutter/material.dart';

import '../../constants/assets/asset_constants.dart';
import '../../extensions/context_extension.dart';
import '../button/my_text_button.dart';


class WonGiftDialog extends StatelessWidget {
  const WonGiftDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: context.dialogBorderRadius,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              buildImage(context),
              Positioned(
                bottom: 12,
                left: 12,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'McGuffin',
                      style: context.textTheme.subtitle1!.copyWith(
                        color: context.theme.cardColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      'Dondurmalı Pasta',
                      style: context.textTheme.bodyText1!.copyWith(
                        color: context.theme.cardColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: context.dialogPadding,
            child: Column(
              children: [
                SizedBox(height: context.dialogLowSpacing),
                buildTitleText(context),
                SizedBox(height: context.dialogMediumSpacing),
                buildDescriptionText(context),
                SizedBox(height: context.dialogMediumSpacing),
                buildRestaurantButton(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  ClipRRect buildImage(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(24),
      ),
      child: ColorFiltered(
        colorFilter:
            ColorFilter.mode(Colors.black.withOpacity(.1), BlendMode.darken),
        child: Image.asset(
          AssetConstants.instance.restaurantTestImage,
          width: context.width,
          height: 180,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Text buildDescriptionText(BuildContext context) {
    return Text.rich(
      TextSpan(
        style: context.textTheme.headline6!.copyWith(height: 1.4),
        children: [
          TextSpan(
            text: 'McGuffin Cafe',
            style: context.textTheme.headline6!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(text: '\'den'),
          TextSpan(
            text: '\nDondurmalı Pasta',
            style: context.textTheme.headline5!.copyWith(
              fontWeight: FontWeight.bold,
              color: context.theme.buttonColor,
            ),
          ),
          TextSpan(text: '\nKazandınız!'),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }

  Text buildTitleText(BuildContext context) {
    return Text(
      'Tebrikler!',
      style: context.textTheme.headline5!.copyWith(
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }

  MyTextButton buildRestaurantButton(BuildContext context) {
    return MyTextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        backgroundColor: context.theme.toggleableActiveColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      ),
      child: Center(
        child: Text(
          'Restorana Git',
          style: context.textTheme.subtitle1!.copyWith(
            color: context.theme.cardColor,
          ),
        ),
      ),
    );
  }
}
