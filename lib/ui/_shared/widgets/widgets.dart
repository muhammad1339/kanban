import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/utils.dart';

export 'custom_button.dart';
export 'custom_text_field.dart';
export 'loading_widget.dart';

Widget buildDialogHeader({required Function() closeAction, required String title}) {
  return Container(
    height: 60,
    decoration: const BoxDecoration(
      color: AppColors.color_0490f2,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      image: DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage(KImageAssets.backAppBar),
      ),
    ),
    child: Stack(
      alignment: Alignment.center,
      children: [
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: 220,
            child: Center(
              child: Text(
                title,
                style: AppTextStyles.titleStyle.copyWith(color: AppColors.white),
              ),
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional.centerEnd,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 20.0, 0),
            child: InkWell(
              onTap: closeAction,
              child: SvgPicture.asset(KSvgIcons.close),
            ),
          ),
        ),
      ],
    ),
  );
}
