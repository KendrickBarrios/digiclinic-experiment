import 'package:flutter/material.dart';

import 'package:digiclinic_experiment/models/clinical_record/clinical_record.dart';
import 'package:digiclinic_experiment/theme/app_colors.dart';
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
              // PatientBadge widget
              Badge(
                label: Text(record.fullName),
                backgroundColor: AppColors.midLightGrayBlue,
                textStyle: AppTextStyles.iconButtonText,
                alignment: Alignment.center,
              ),
              const SizedBox(width: 25),
              // PatientBadge widget
              Badge(
                label: Text(record.recordCode ?? ''),
                backgroundColor: AppColors.midLightGrayBlue,
                textStyle: AppTextStyles.iconButtonText,
                alignment: Alignment.center,
              ),
              const Spacer()
            ],
          ),

          const SizedBox(height: 60),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(width: 50),

              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Record details widgets
                  // SURROUND WITH EXPANDED
                ],
              ),
              
              const SizedBox(width: 20),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Expedientes recientes', style: AppTextStyles.subTitleBold)
                  // Scrollable with RecordDocument widget
                ],
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