import 'package:digiclinic_experiment/theme/app_colors.dart';
import 'package:digiclinic_experiment/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:digiclinic_experiment/models/clinical_record/clinical_record.dart';

class ClinicalRecordCard extends StatefulWidget {

  const ClinicalRecordCard({
    super.key,
    required this.record,
    required this.onTap
  });

  final ClinicalRecord record;
  final VoidCallback onTap;

  @override
  State<ClinicalRecordCard> createState() => _ClinicalRecordCardState();
}

class _ClinicalRecordCardState extends State<ClinicalRecordCard> {

  bool _hovered = false;
  bool _pressed = false;

  @override
  Widget build(BuildContext context) {

    final scheme = Theme.of(context).colorScheme;

    final recordCode = widget.record.recordCode;
    final nextAppointment = _getNextAppointment(widget.record.nextAppointments);
    final lastUpdated = widget.record.lastUpdated;
    final dateFormatter = DateFormat('dd/MM/yyyy');

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
            elevation: 6,
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: _pressed ? AppColors.darkerBlue : AppColors.borderGray,
                width: _pressed ? 5 : 1
              ),
              borderRadius: BorderRadius.circular(25)
            ),
            child: AnimatedContainer(
              color: _hovered || _pressed ? AppColors.lighterBlue : scheme.surfaceContainerHighest,
              duration: const Duration(milliseconds: 250),
              curve: Curves.easeOut,
              padding: const EdgeInsets.all(30),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.record.fullName,
                      maxLines: 1,
                      softWrap: false,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.recordCardTitle
                    ),
              
                    const Spacer(),
              
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          recordCode ?? '-',
                          maxLines: 1,
                          softWrap: false,
                          overflow: TextOverflow.ellipsis,
                          style: AppTextStyles.recordCardCode
                        ),
              
                        const Spacer(),
              
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'Próxima cita: ${nextAppointment != null ? dateFormatter.format(nextAppointment) : '-' }',
                              style: AppTextStyles.recordCardDates
                            ),
              
                            const SizedBox(height: 6),
              
                            Text(
                              'Actualizado: ${lastUpdated != null ? dateFormatter.format(lastUpdated) : '-'}',
                              style: AppTextStyles.recordCardDates
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ),
    );
  }

  DateTime? _getNextAppointment(List<DateTime> appointments) {
    final now = DateTime.now();

    final upcoming = appointments
      .where((date) => date.isAfter(now))
      .toList()
      ..sort();

    return upcoming.isNotEmpty ? upcoming.first : null;
  }
}
