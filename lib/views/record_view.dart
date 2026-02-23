import 'package:digiclinic_experiment/widgets/patient_badge.dart';
import 'package:digiclinic_experiment/widgets/record_detail.dart';
import 'package:flutter/material.dart';

import 'package:digiclinic_experiment/models/clinical_record/clinical_record.dart';
import 'package:digiclinic_experiment/theme/app_text_styles.dart';

class RecordView extends StatelessWidget {

  const RecordView({
    super.key,
    required this.record
  });

  final ClinicalRecord record;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const SizedBox(height: 60),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),

              PatientBadge(text: record.fullName),

              const SizedBox(width: 25),

              PatientBadge(text: record.recordCode ?? ''),

              const Spacer()
            ],
          ),

          const SizedBox(height: 60),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(width: 50),

              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 840, maxHeight: 600),
                child: Column(
                  spacing: 20,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RecordDetail(tag: 'Médico:', text: 'Dra. Gillian Vargas'),
                    RecordDetail(tag: 'Creado el:', date: record.createdAt),
                    RecordDetail(tag: 'Actualizado el:', date: record.lastUpdated),
                    RecordDetail(tag: 'Última visita:', date: record.lastVisitDate),
                    record.nextAppointments.isEmpty
                      ? RecordDetail(tag: 'Próxima cita:', text: '-')
                      : RecordDetail(tag: 'Próxima cita:', date: record.nextAppointments[0])
                  ],
                ),
              ),
              
              const SizedBox(width: 20),

              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 840, maxHeight: 600),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Expedientes recientes', style: AppTextStyles.subTitleBold)
                    // Scrollable with RecordDocument widget
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 50),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Return button
              const Spacer(),
              // Appointments button
              const SizedBox(width: 25),
              // Add button
              const SizedBox(width: 25),
              // Edit button
              const SizedBox(width: 25),
              // Delete button
            ],
          )
        ],
      )
    );
  }
}