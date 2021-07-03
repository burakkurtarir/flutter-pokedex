import 'package:flutter/material.dart';

import '../../extensions/context_extension.dart';
import '../button/dialog_button.dart';



class WonScoinDialog extends StatelessWidget {
  const WonScoinDialog({Key? key}) : super(key: key);

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
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: context.theme.cardColor,
                boxShadow: [
                  BoxShadow(
                    color: context.theme.primaryColor.withOpacity(.4),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.monetization_on_rounded,
                    color: context.theme.buttonColor,
                    size: 40,
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tebrikler',
                          style: context.textTheme.subtitle1!.copyWith(
                            color: context.theme.primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: '12 Scoin ',
                                style: context.textTheme.headline6!.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: 'Kazandınız',
                                style: context.textTheme.headline6!.copyWith(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: context.dialogMediumSpacing),
            buildDescriptionText(context),
            SizedBox(height: context.dialogHighSpacing),
            buildButtons(context),
          ],
        ),
      ),
    );
  }

  Text buildDescriptionText(BuildContext context) {
    return Text(
      'Kazandığınız coinler ile dilerseniz cüzdanınıza ekleyebilir, dilerseniz yardım kurumlarına bağışlayabilirsiniz.',
      style: context.textTheme.subtitle1!.copyWith(
        color: Color(0xff707070),
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

  Row buildButtons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DialogButton(
          text: 'Cüzdan',
          style: context.textTheme.headline6!.copyWith(
            color: context.theme.primaryColor,
            fontWeight: FontWeight.bold,
          ),
          borderColor: context.theme.primaryColor,
        ),
        SizedBox(width: context.dialogLowSpacing),
        DialogButton(
          text: 'Bağış',
          style: context.textTheme.headline6!.copyWith(
            color: context.theme.toggleableActiveColor,
            fontWeight: FontWeight.bold,
          ),
          borderColor: context.theme.toggleableActiveColor,
        ),
      ],
    );
  }
}
