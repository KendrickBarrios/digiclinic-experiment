import 'package:flutter/material.dart';

import 'package:digiclinic_experiment/models/clinical_record/clinical_record.dart';

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
      )
    );
  }
}