import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:toast/toast.dart';

import 'utils.dart';

void showToast({
  required BuildContext context,
  required String msg,
  Color backgroundColor = AppColors.black,
  int duration = Toast.lengthLong,
}) {
  ToastContext().init(context);
  Toast.show(
    msg,
    textStyle: AppTextStyles.titleStyle.copyWith(
      color: AppColors.white,
      fontSize: 14,
    ),
    backgroundColor: backgroundColor,
    duration: duration,
  );
}

void showErrorToast({
  required BuildContext context,
  required String msg,
  Color backgroundColor = AppColors.errorRed,
  int duration = Toast.lengthLong,
}) {
  showToast(context: context, msg: msg, backgroundColor: backgroundColor);
}

void showSuccessToast({
  required BuildContext context,
  required String msg,
  Color backgroundColor = AppColors.successGreen,
  int duration = Toast.lengthLong,
}) {
  showToast(context: context, msg: msg, backgroundColor: backgroundColor);
}

// void showLoadingDialog(BuildContext context, bool isLoading) {
//   showPopup(
//     context: context,
//     childContent: WillPopScope(
//       onWillPop: () async {
//         return !isLoading;
//       },
//       child: const LoadingWidget(),
//     ),
//     hasShape: false,
//   );
// }

const rippleSpinKit = SpinKitRipple(
  duration: Duration(milliseconds: 800),
  color: AppColors.white,
  size: 40.0,
);
