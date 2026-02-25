import 'package:digiclinic_experiment/models/clinical_note/clinical_note.dart';
import 'package:digiclinic_experiment/models/identification_form/identification_form.dart';
import 'package:digiclinic_experiment/models/pediatric_note/pediatric_note.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:digiclinic_experiment/models/record_document.dart';
import 'package:digiclinic_experiment/theme/app_colors.dart';
import 'package:digiclinic_experiment/theme/app_text_styles.dart';

class RecentDocument extends StatefulWidget {

  const RecentDocument({
    super.key,
    required this.document,
    required this.onTap
  });

  final RecordDocument document;
  final VoidCallback onTap;

  @override
  State<RecentDocument> createState() => _RecentDocumentState();
}

class _RecentDocumentState extends State<RecentDocument> {

  bool _hovered = false;
  bool _pressed = false;

  @override
  Widget build(BuildContext context) {

    final scheme = Theme.of(context).colorScheme;

    final dateFormatter = DateFormat('dd/MM/yy');
    final date = dateFormatter.format(widget.document.lastUpdated!);

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
          child: Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: _pressed ? AppColors.darkerBlue : AppColors.borderGray,
                width: _pressed ? 5 : 1
              ),
              borderRadius: BorderRadius.circular(15)
            ),
            child: AnimatedContainer(
              color: _hovered || _pressed ? AppColors.lighterBlue : scheme.surfaceContainerHighest,
              duration: const Duration(milliseconds: 250),
              curve: Curves.easeOut,
              padding: const EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    widget.document.displayName,
                    style: AppTextStyles.inputLabel
                  ),
                  
                  const Spacer(),

                  Text(
                    date,
                    style: AppTextStyles.inputLabel
                  ),
                ],
              )
            ),
          ),
        )
      ),
    );
  }
}