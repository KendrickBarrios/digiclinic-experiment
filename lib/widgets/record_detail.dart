import 'package:digiclinic_experiment/theme/app_colors.dart';
import 'package:digiclinic_experiment/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class RecordDetail extends StatelessWidget {

  const RecordDetail({
    super.key,
    required this.tag,
    this.text,
    this.date
  });

  final String tag;
  final String? text;
  final DateTime? date;

  @override
  Widget build(BuildContext context) {
    final dateFormatter = DateFormat('dd/MM/yyyy');

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 325,
          height: 80,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AppColors.lighterBlue,
            borderRadius: BorderRadius.circular(15)
          ),
          child: Text(
            tag,
            style: AppTextStyles.subTitleBold,
          ),
        ),
      
        const SizedBox(width: 10),
      
        Expanded(
          child: Text(
            text ?? dateFormatter.format(date!),
            style: AppTextStyles.recordDetailValue,
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    );
  }
}