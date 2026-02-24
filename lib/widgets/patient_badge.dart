import 'package:digiclinic_experiment/theme/app_colors.dart';
import 'package:digiclinic_experiment/theme/app_text_styles.dart';
import 'package:digiclinic_experiment/widgets/popup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PatientBadge extends StatefulWidget {
  const PatientBadge({
    super.key,
    required this.text
  });

  final String text;

  @override
  State<PatientBadge> createState() => _PatientBadgeState();
}

class _PatientBadgeState extends State<PatientBadge> {
  
  bool _hovered = false;
  bool _copied = false;

  Future<void> _copyToClipboard() async {
    await Clipboard.setData(ClipboardData(text: widget.text));

    if (!mounted) return;

    setState(() {
      _copied = true;
    });

    Popup.show(
      context,
      message: 'Texto copiado al portapapeles.',
      left: 560,
      right: 560
    );

    await Future.delayed(const Duration(milliseconds: 1200));

    if (!mounted) return;

    setState(() {
      _copied = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() {
        _hovered = false;
        _copied = false;
      }),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: _copyToClipboard,
        child: Container(
          height: 80,
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
          decoration: BoxDecoration(
            color: AppColors.midLightGrayBlue,
            borderRadius: BorderRadius.circular(15)
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Text(
                widget.text,
                style: AppTextStyles.iconButtonText,
                maxLines: 1,
                overflow: TextOverflow.ellipsis
              ),

              if (_hovered)
                Positioned(
                  right: 0,
                  child: Container(
                    width: 60,
                    height: 60,
                    color: AppColors.midLightGrayBlue,
                    child: AnimatedSwitcher(
                      duration: const Duration(milliseconds: 200),
                      child: Icon(
                        key: ValueKey(_copied),
                        _copied
                          ? Icons.file_copy
                          : Icons.file_copy_outlined,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  ),
                )
            ],
          )
        )
      )
    );
  }
}