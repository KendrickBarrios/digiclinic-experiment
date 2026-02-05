import 'package:flutter/material.dart';

import 'package:digiclinic_experiment/theme/app_text_styles.dart';

class ViewPlaceHolder extends StatelessWidget {
  const ViewPlaceHolder({
    super.key,
    required this.title
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        title,
        style: AppTextStyles.headlineBold,
      ),
    );
  }
}