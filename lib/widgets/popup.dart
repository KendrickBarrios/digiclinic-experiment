import 'package:flutter/material.dart';

import 'package:digiclinic_experiment/theme/app_text_styles.dart';

enum PopupType { error, success, info }

class Popup {

  static void show(
    BuildContext context, {
    required String message,
    PopupType type = PopupType.success,
    IconData icon = Icons.check,
    Duration duration = const Duration(seconds: 3),
    double top = 840,
    double left = 128,
    double right = 128
  }) {

    final overlay = Overlay.of(context);
    late OverlayEntry overlayEntry;

    overlayEntry = OverlayEntry(
      builder: (context) => _Popup(
        message: message,
        type: type,
        duration: duration,
        top: top,
        left: left,
        right: right,
        onDismissed: () => overlayEntry.remove(),
      ),
    );

    overlay.insert(overlayEntry);
  }
}

class _Popup extends StatefulWidget {

  const _Popup({
    required this.message,
    required this.type,
    required this.duration,
    required this.top,
    required this.left,
    required this.right,
    required this.onDismissed
  });

  final String message;
  final PopupType type;
  final Duration duration;
  final double top;
  final double left;
  final double right;
  final VoidCallback onDismissed;

  @override
  State<_Popup> createState() => _PopupState();
}

class _PopupState extends State<_Popup> with SingleTickerProviderStateMixin {

  late final AnimationController _controller;
  late final Animation<Offset> _slideAnimation;
  late final Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300)
    );

    _slideAnimation = Tween(
      begin: const Offset(0, -1),
      end: const Offset(0, 0)
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut
    ));

    _fadeAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn
    );

    _controller.forward();

    Future.delayed(widget.duration, () async {
      await _controller.reverse();
      widget.onDismissed();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  IconData _icon() {
    switch (widget.type) {
      case PopupType.error:
        return Icons.error_outline;
      case PopupType.info:
        return Icons.info_outline;
      case PopupType.success:
        return Icons.check_circle_outline;
    }
  }

  Color _accentColor() {
    switch (widget.type) {
      case PopupType.error:
        return Colors.redAccent;
      case PopupType.info:
        return Colors.blueAccent;
      case PopupType.success:
        return Colors.green;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).padding.top + widget.top,
      left: widget.left,
      right: widget.right,
      child: Material(
        color: Colors.transparent,
        child: SlideTransition(
          position: _slideAnimation,
          child: FadeTransition(
            opacity: _fadeAnimation,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: _accentColor(), width: 2),
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 12,
                    color: Colors.black26
                  )
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      widget.message,
                      style: AppTextStyles.popupText,
                    )
                  ),
                  const SizedBox(width: 12),
                  Icon(_icon(), color: _accentColor(), size: 40)
                ]
              ),
            )
          )
        )
      )
    );
  }
}