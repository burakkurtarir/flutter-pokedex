import 'package:flutter/material.dart';

import '../../extensions/context_extension.dart';
import '../button/my_text_button.dart';

class DonateSuccessDialog extends StatelessWidget {
  const DonateSuccessDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: context.dialogBorderRadius,
      ),
      child: Padding(
        padding: context.dialogPadding,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            buildIcon(context),
            SizedBox(height: context.dialogHighSpacing),
            buildTitleText(context),
            SizedBox(height: context.dialogLowSpacing),
            buildDescriptionText(context),
            SizedBox(height: context.dialogLowSpacing),
            buildDownloadButton(context),
          ],
        ),
      ),
    );
  }

  MyTextButton buildDownloadButton(BuildContext context) {
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
          'Dekont İndir',
          style: context.textTheme.subtitle1!.copyWith(
            color: context.theme.cardColor,
          ),
        ),
      ),
    );
  }

  Text buildDescriptionText(BuildContext context) {
    return Text.rich(
      TextSpan(
        style: context.textTheme.subtitle1!.copyWith(height: 1.2),
        children: [
          TextSpan(
            text: 'Çağdaş Yaşamı Destekleme Derneği',
            style: context.textTheme.subtitle1!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(text: '\'ne'),
          TextSpan(
            text: '\n24 Scoin',
            style: context.textTheme.headline6!.copyWith(
              fontWeight: FontWeight.bold,
              color: context.theme.buttonColor,
            ),
          ),
          TextSpan(text: '\nbağış yaptınız.'),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }

  CircleAvatar buildIcon(BuildContext context) {
    return CircleAvatar(
      radius: 40,
      child: Icon(
        Icons.music_note,
        size: context.dialogIconSize,
      ),
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
}
