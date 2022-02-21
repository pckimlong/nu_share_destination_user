import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../core/core.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField({
    Key? key,
    this.label,
    this.hintText,
    this.isRequired = false,
    this.capitalization = TextCapitalization.none,
    this.textInputType,
    this.textInputAction,
    this.controller,
    this.focusNode,
    this.autofocus = false,
    this.validator,
    this.formatter,
    this.errorMgs,
    this.onEditingComplete,
    this.onChanged,
    this.maxLines,
    this.prefixIcon,
    this.suffixIcon,
    this.textStyle,
    this.initialValue,
    this.obscureText = false,
  }) : super(key: key);

  final String? Function(String?)? validator;
  final Function()? onEditingComplete;
  final Function(String)? onChanged;
  final bool autofocus;
  final TextCapitalization capitalization;
  final TextEditingController? controller;
  final String? errorMgs;
  final FocusNode? focusNode;
  final List<TextInputFormatter>? formatter;
  final String? hintText;
  final bool isRequired;
  final String? label;
  final int? maxLines;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;
  final TextStyle? textStyle;
  final String? initialValue;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    var _label = label;
    Widget errorBar = Container(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        errorMgs ?? '',
        style: theme.textTheme.caption!.copyWith(color: theme.errorColor),
      ),
    );
    var textField = Container(
      constraints:
          const BoxConstraints(minHeight: AppStyles.minTextFieldHeight),
      padding: EdgeInsets.fromLTRB(
        prefixIcon == null ? 15 : 0,
        0,
        suffixIcon == null ? 15 : 0,
        0,
      ),
      decoration: BoxDecoration(
        color: AppColors.textFieldBgColor,
        borderRadius: AppStyles.textFieldRadius,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            controller: controller,
            focusNode: focusNode,
            textCapitalization: capitalization,
            autofocus: autofocus,
            initialValue: initialValue,
            textInputAction: textInputAction,
            obscureText: obscureText,
            keyboardType: textInputType,
            validator: validator,
            onChanged: onChanged,
            style: textStyle,
            inputFormatters: formatter,
            onEditingComplete: onEditingComplete,
            maxLines: maxLines,
            decoration: InputDecoration(
              hintText: hintText,
              border: InputBorder.none,
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
            ),
          ),
          if (errorMgs != null) errorBar,
        ],
      ),
    );
    Widget? labelBar;
    if (_label != null) {
      if (isRequired) {
        labelBar = Row(
          children: [
            Text(
              _label,
              style: Theme.of(context).textTheme.caption!.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
            const SizedBox(width: 2),
            const Text('*', style: TextStyle(color: Colors.red))
          ],
        );
      } else {
        labelBar = Row(
          children: [
            Text(
              _label,
              style: Theme.of(context)
                  .textTheme
                  .caption!
                  .copyWith(fontWeight: FontWeight.w600),
            ),
          ],
        );
      }
    }

    if (labelBar != null) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [labelBar, const SizedBox(height: 3), textField],
      );
    } else {
      return textField;
    }
  }
}
