import 'dart:ui';
import 'package:flutter/material.dart';
import 'colors.dart';

Future showPopup({
  required BuildContext context,
  required Widget childContent,
  bool isDismissible = true,
  bool hasShape = true,
  Alignment alignment = Alignment.center,
  EdgeInsets dialogPadding = const EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0),
}) async {
  return showGeneralDialog(
    barrierDismissible: isDismissible,
    barrierLabel: 'Dialog',
    context: context,
    transitionDuration: const Duration(milliseconds: 400),
    pageBuilder: (dialogContext, __, ___) {
      return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
        child: hasShape
            ? Dialog(
                insetPadding: dialogPadding,
                backgroundColor: AppColors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                alignment: alignment,
                child: childContent,
              )
            : Material(
                color: Colors.transparent,
                type: MaterialType.card,
                clipBehavior: Clip.none,
                child: childContent,
              ),
      );
    },
    transitionBuilder: (_, anim, __, child) {
      return SlideTransition(
        position: Tween(begin: const Offset(0, 1), end: const Offset(0, 0)).animate(anim),
        child: child,
      );
    },
  );
}
