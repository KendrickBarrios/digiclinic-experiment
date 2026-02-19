import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:digiclinic_experiment/models/clinical_record/clinical_record.dart';
import 'package:digiclinic_experiment/theme/app_text_styles.dart';
import 'package:digiclinic_experiment/viewmodels/home_view_model.dart';
import 'package:digiclinic_experiment/widgets/clinical_record_card.dart';
import 'package:digiclinic_experiment/widgets/hover_icon_label_button.dart';

class HomeView extends StatelessWidget {

  const HomeView({
    super.key,
    required this.onSearchPressed,
    required this.onCreateRecordPressed,
    required this.onRecordCardPressed
  });

  final VoidCallback onSearchPressed;
  final VoidCallback onCreateRecordPressed;
  final void Function(ClinicalRecord record) onRecordCardPressed;

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<HomeViewModel>();

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const SizedBox(height: 20),

          Row(
            children: [
              const SizedBox(width: 75),

              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 806, maxHeight: 100),
                    child: HoverIconlabelbutton(
                      icon: Icons.search, 
                      iconSize: 50,
                      label: 'Buscar', 
                      onTap: onSearchPressed
                    ),
                  ),
                ),
              ),

              const SizedBox(width: 51),

              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 806, maxHeight: 100),
                    child: HoverIconlabelbutton(
                      icon: Icons.add, 
                      iconSize: 50,
                      label: 'Crear expediente', 
                      onTap: onCreateRecordPressed
                    ),
                  ),
                ),
              ),

              const SizedBox(width: 75),
            ],
          ),

          const SizedBox(height: 45),

          Row(
            children: [
              const Spacer(),

              Align(
                alignment: Alignment.center,
                child: Text(
                  'Expedientes recientes',
                  style: AppTextStyles.headlineRegular,
                ),
              ),

              const Spacer(),
            ],
          ),

          const SizedBox(height: 45),

          Expanded(
            child: Builder(
              builder: (context) {
                if (viewModel.isLoading) {
                  return const Center(child: CircularProgressIndicator());
                }

                if (viewModel.records.isEmpty) {
                  return const Center(child: Text('No hay expedientes que mostrar', style: AppTextStyles.inputLabel,));
                }

                return GridView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 75),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 50,
                    crossAxisSpacing: 50,
                    mainAxisExtent: 204
                  ),
                  itemCount: viewModel.records.length,
                  itemBuilder: (_, index) {
                    final record = viewModel.records[index];
                    return ClinicalRecordCard(record: record, onTap: () => onRecordCardPressed(record));
                  },
                );
              }
            ),
          ),

          const SizedBox(height: 35),
        ]
      )
    );
  }
}