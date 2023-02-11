import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../utils/utils.dart';


class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    Key? key,
  }) : super(key: key);

  static const spinkit =  SpinKitCircle(
    duration: Duration(milliseconds: 800),
    color: AppColors.color_008AF1,
    size: 60.0,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      color: Colors.transparent,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [spinkit],
      ),
    );
  }
}
