import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

import '../utils/utils.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    Key? key,
    this.backgroundColor = AppColors.colorF3FAFF,
    this.label,
    this.initialValue,
    this.validate,
    this.controller,
    this.onChanged,
    this.onSubmit,
    this.suffixIcon,
    this.inputType,
    this.inputDecoration,
    this.inputFormatters,
    this.readOnly = false,
    this.isPassword = false,
    this.inputStyle = AppTextStyles.inputStyle,
    this.inputAction = TextInputAction.next,
    this.minLines = 1,
    this.maxLines = 1,
  }) : super(key: key);

  final Color? backgroundColor;
  final Widget? suffixIcon;
  final String? label;
  final String? initialValue;
  final bool isPassword;
  final bool readOnly;
  final String? Function(String?)? validate;
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final Function(String?)? onSubmit;
  final TextStyle inputStyle;
  final TextInputType? inputType;
  final TextInputAction inputAction;
  final InputDecoration? inputDecoration;
  final int minLines;
  final int maxLines;

  final List<TextInputFormatter>? inputFormatters;
  final outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(20.0),
    borderSide: const BorderSide(color: AppColors.color_272D7045, width: 1.0),
  );

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      keyboardType: inputType,
      minLines: minLines,
      maxLines: maxLines,
      inputFormatters: inputFormatters,
      readOnly: readOnly,
      textInputAction: inputAction,
      validator: validate,
      controller: controller,
      onChanged: onChanged,
      onFieldSubmitted: onSubmit,
      obscureText: isPassword,
      decoration: inputDecoration ??
          InputDecoration(
            errorStyle: AppTextStyles.inputStyleError,
            suffixIcon: suffixIcon,
            focusedBorder: outlineInputBorder.copyWith(borderSide: const BorderSide(color: AppColors.color_0490f2, width: 1.0)),
            errorBorder: outlineInputBorder.copyWith(borderSide: const BorderSide(color: AppColors.errorRed, width: 1.0)),
            focusedErrorBorder: outlineInputBorder.copyWith(borderSide: const BorderSide(color: AppColors.errorRed, width: 1.0)),
            border: outlineInputBorder,
            enabledBorder: outlineInputBorder,
            disabledBorder: outlineInputBorder,
            fillColor: backgroundColor,
            filled: true,
            labelText: label,
            floatingLabelBehavior: FloatingLabelBehavior.auto,
            labelStyle: AppTextStyles.hintStyle,
          ),
      style: inputStyle,
    );
  }
}
