import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../_shared/utils/utils.dart';

class BoardItem extends StatelessWidget {
  const BoardItem({
    Key? key,
    required this.context,
    required this.onTap,
    required this.label,
    this.suffixIcon = KSvgIcons.arrowAction,
  }) : super(key: key);

  final BuildContext context;
  final Function() onTap;
  final String label;
  final String suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.colorF3FAFF,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 24,
      ),
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: onTap,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: AppTextStyles.titleStyle.copyWith(fontSize: 14),
            ),
            SvgPicture.asset(suffixIcon),
          ],
        ),
      ),
    );
  }
}
