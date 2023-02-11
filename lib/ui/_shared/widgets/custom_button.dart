import 'package:flutter/material.dart';

import '../utils/utils.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    this.isLoading = false,
    this.isEnabled = true,
    this.action,
    required this.text,
    this.leading = const SizedBox.shrink(),
    this.trailing = const SizedBox.shrink(),
    this.hMargin = 55,
    this.height = 52,
  }) : super(key: key);

  final bool isLoading;
  final bool isEnabled;
  final String text;
  final Function()? action;

  final Widget leading;
  final Widget trailing;
  final double hMargin;
  final double height;

  @override
  Widget build(BuildContext context) {
    final BoxDecoration enabledDecoration = BoxDecoration(
      boxShadow: <BoxShadow>[
        BoxShadow(
          color: Colors.black.withOpacity(0.2),
          blurRadius: 5,
          offset: const Offset(0, 2),
          spreadRadius: 0.3,
        ),
      ],
      borderRadius: BorderRadius.circular(40),
      gradient: const LinearGradient(
        colors: [
          AppColors.color_21BCFF,
          AppColors.color_008AF1,
        ],
      ),
    );

    final BoxDecoration disabledDecoration = BoxDecoration(
      boxShadow: const <BoxShadow>[],
      borderRadius: BorderRadius.circular(20),
      gradient: LinearGradient(
        colors: [
          Colors.blueGrey[100] ?? Colors.blueGrey,
          Colors.blueGrey[100] ?? Colors.blueGrey,
        ],
      ),
    );

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: (isLoading || !isEnabled) ? null : action,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInCubic,
        decoration: isEnabled ? enabledDecoration : disabledDecoration,
        height: height,
        margin: EdgeInsets.symmetric(horizontal: hMargin),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: isLoading
              ? [
                  rippleSpinKit,
                ]
              : [
                  leading,
                  const SizedBox(width: 16),
                  Text(
                    text,
                    style: AppTextStyles.titleStyle.copyWith(fontSize: 14, color: Colors.white),
                  ),
                  const SizedBox(width: 16),
                  trailing,
                ],
        ),
      ),
    );
  }
}
