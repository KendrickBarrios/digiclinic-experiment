import 'package:digiclinic_experiment/theme/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:digiclinic_experiment/theme/app_text_styles.dart';

class AppTextField extends StatefulWidget {

  const AppTextField({
    super.key,
    this.maxWidth,
    required this.label,
    required this.controller,
    this.obscureText = false,
    this.showVisibilityToggle = false,
    this.icon
  });

  final double? maxWidth;
  final String label;
  final TextEditingController controller;
  final bool obscureText;
  final bool showVisibilityToggle;
  final IconData? icon;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {

  bool _obscure = false;

  @override
  void initState() {
    super.initState();
    _obscure = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ConstrainedBox(
          constraints: widget.maxWidth != null
            ? BoxConstraints(maxWidth: widget.maxWidth!)
            : const BoxConstraints(),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              widget.label,
              style: AppTextStyles.inputLabel
            ),
          ),
        ),

        const SizedBox(height: 16),

        Focus(
          child: Builder(
            builder: (context) {
              final hasFocus = Focus.of(context).hasFocus;

              return ConstrainedBox(
                constraints: widget.maxWidth != null
                  ? BoxConstraints(maxWidth: widget.maxWidth!)
                  : const BoxConstraints(),
                child: TextField(
                  controller: widget.controller,
                  obscureText: _obscure,
                  style: AppTextStyles.inputText,
                  decoration: InputDecoration(
                    filled: true,
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 24,
                      horizontal: 16
                    ),
                    suffixIcon: _buildSuffixIcon(hasFocus)
                  ),
                ),
              );
            },
          ),
        ),
      ]
    );
  }

  Widget? _buildSuffixIcon(bool hasFocus) {
    if (widget.showVisibilityToggle) {
      return IconButton(
        icon: Icon(
          _obscure ? Icons.visibility_off : Icons.visibility,
          color: AppColors.midDarkBlue
        ),
        onPressed: () {
          setState(() => _obscure = !_obscure);
        },
      );
    }

    if (widget.icon != null && !hasFocus) {
      return Icon(widget.icon, color: AppColors.midDarkBlue);
    }

    return null;
  }
}