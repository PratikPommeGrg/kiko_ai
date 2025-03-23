import 'package:flutter/material.dart';
import 'package:kiko_ai/core/app/constants/app_border_radius.dart';
import 'package:kiko_ai/core/app/constants/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.autofocus,
    this.controller,
    this.readOnly,
    this.enabled,
    this.keyboardType,
    this.minLines,
    this.maxLines,
    this.obscureText,
    this.borderRadius,
    this.prefixIcon,
    this.suffixIcon,
  });

  final bool? autofocus;
  final bool? readOnly;
  final bool? enabled;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final int? minLines;
  final int? maxLines;
  final bool? obscureText;
  final BorderRadius? borderRadius;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: autofocus ?? false,
      controller: controller,
      enabled: enabled ?? true,
      readOnly: readOnly ?? false,
      keyboardType: keyboardType ?? TextInputType.text,
      obscureText: obscureText ?? false,
      maxLines: obscureText ?? false ? 1 : maxLines,
      minLines: minLines ?? 1,

      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,

        focusedBorder: OutlineInputBorder(
          borderRadius: borderRadius ?? AppBorderRadius.medium,
          borderSide: BorderSide(color: AppColors.primary, width: 2),
        ),

        disabledBorder: OutlineInputBorder(
          borderRadius: borderRadius ?? AppBorderRadius.medium,
          borderSide: BorderSide(color: Colors.grey),
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: borderRadius ?? AppBorderRadius.medium,
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    );
  }
}
