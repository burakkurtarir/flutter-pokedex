import 'package:flutter/material.dart';

import '../../extensions/context_extension.dart';
import '../button/dialog_button.dart';

class RobotDialog extends StatelessWidget {
  const RobotDialog({Key? key}) : super(key: key);

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
            buildDescriptionText(context),
            SizedBox(height: context.dialogMediumSpacing),
            buildQuestionText(context),
            SizedBox(height: context.dialogMediumSpacing),
            buildButtons(context),
          ],
        ),
      ),
    );
  }

  CircleAvatar buildIcon(BuildContext context) {
    return CircleAvatar(
      radius: 40,
      child: Icon(
        Icons.headset,
        size: context.dialogIconSize,
      ),
    );
  }

  Text buildDescriptionText(BuildContext context) {
    return Text(
      'Spinigo Yapay zekası hediye ve indirimleri sizin için filtreleyebilmesi için sizin ne sevdiğinizi merak ediyor.',
      style: context.textTheme.headline6!.copyWith(
        color: Color(0xff707070),
      ),
      textAlign: TextAlign.center,
    );
  }

  Text buildQuestionText(BuildContext context) {
    return Text(
      'Sandviçinizi nasıl tercih edersiniz?',
      style: context.textTheme.headline5!.copyWith(
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }

  Row buildButtons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DialogButton(
          text: 'Sıcak',
          style: context.textTheme.headline6!.copyWith(
            color: context.theme.primaryColor,
            fontWeight: FontWeight.bold,
          ),
          borderColor: context.theme.primaryColor,
        ),
        SizedBox(width: context.dialogLowSpacing),
        DialogButton(
          text: 'Soğuk',
          style: context.textTheme.headline6!.copyWith(
            color: Color(0xff5663FF),
            fontWeight: FontWeight.bold,
          ),
          borderColor: Color(0xff5663FF),
        ),
      ],
    );
  }
}
