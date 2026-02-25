import 'package:flutter/material.dart';

import 'package:digiclinic_experiment/theme/app_colors.dart';
import 'package:digiclinic_experiment/theme/app_text_styles.dart';
import 'package:digiclinic_experiment/widgets/utils/reactive_colors.dart';

enum HoverButtonVariant {
  primary,
  secondary,
  tertiary,
  alert,
  cancel
}

ReactiveColors _colorsForVariant(
  BuildContext context,
  HoverButtonVariant variant
) {
  final scheme = Theme.of(context).colorScheme;

  switch (variant) {
    case HoverButtonVariant.primary:
      return ReactiveColors(
        background: scheme.primary,
        hoverBackground: scheme.onSurface,
        pressedBackground: scheme.onSecondary,
        foreGround: scheme.onPrimary
      );
    case HoverButtonVariant.secondary:
      return ReactiveColors(
        background: AppColors.lightestGreen,
        hoverBackground: AppColors.green,
        pressedBackground: AppColors.darkestGreen,
        foreGround: scheme.onPrimary
      );
    case HoverButtonVariant.tertiary:
      return ReactiveColors(
        background: AppColors.grayBlue,
        hoverBackground: AppColors.midDarkGrayBlue,
        pressedBackground: AppColors.darkerGrayBlue,
        foreGround: scheme.onPrimary
      );
    case HoverButtonVariant.alert:
      return ReactiveColors(
        background: AppColors.lightestRed,
        hoverBackground: AppColors.red,
        pressedBackground: AppColors.darkestRed,
        foreGround: scheme.onPrimary
      );
    case HoverButtonVariant.cancel:
      return ReactiveColors(
        background: AppColors.buttonLightGray,
        hoverBackground: AppColors.buttonMidGray,
        pressedBackground: AppColors.buttonDarkGray,
        foreGround: scheme.onPrimary
      );
  }
}

class HoverIconlabelbutton extends StatefulWidget {

  const HoverIconlabelbutton({
    super.key,
    required this.icon,
    required this.iconSize,
    required this.label,
    required this.onTap,
    this.variant = HoverButtonVariant.primary
  });

  final IconData icon;
  final double iconSize;
  final String label;
  final VoidCallback onTap;
  final HoverButtonVariant variant;

  @override
  State<HoverIconlabelbutton> createState() => _HoverIconLabelButtonState();
}

class _HoverIconLabelButtonState extends State<HoverIconlabelbutton> {

  bool _hovered = false;
  bool _pressed = false;
  bool get _showText => _hovered || _pressed;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() {
        _hovered = false;
        _pressed = false;
      }),
      cursor: SystemMouseCursors.click,
      child: Listener(
        onPointerDown: (_) => setState(() => _pressed = true),
        onPointerUp: (_) => setState(() => _pressed = false),
        onPointerCancel: (_) => setState(() => _pressed = false),
        child: GestureDetector(
          onTap: widget.onTap,
          behavior: HitTestBehavior.opaque,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeOut,
            decoration: BoxDecoration(
              color: _backgroundColor(context),
              borderRadius: BorderRadius.circular(20)
            ),
            child: Center(
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 200),
                switchInCurve: Curves.easeOut,
                switchOutCurve: Curves.easeIn,
                transitionBuilder: (child, animation) {
                  return FadeTransition(
                    opacity: animation,
                    child: child
                  );
                },
                child: _showText
                  ? Text(
                      widget.label,
                      key: const ValueKey('text'),
                      style: AppTextStyles.iconButtonText,
                    )
                  : Icon(
                      widget.icon,
                      key: const ValueKey('icon'),
                      color: _foreGround(context),
                      size: widget.iconSize,
                    )
              ),
            ),
          ),
        )
      )
    );
  }

  Color _backgroundColor(BuildContext context) {
    ReactiveColors colors = _colorsForVariant(context, widget.variant);

    if (_pressed) {
      return colors.pressedBackground;
    }

    if (_hovered) {
      return colors.hoverBackground;
    }

    return colors.background;
  }

  Color _foreGround(BuildContext context) {
    return _colorsForVariant(context, widget.variant).foreGround;
  }
}