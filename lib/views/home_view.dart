import 'package:digiclinic_experiment/theme/app_text_styles.dart';
import 'package:digiclinic_experiment/widgets/hover_icon_label_button.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {

  const HomeView({
    super.key,
    required this.onSearchPressed,
    required this.onCreateRecordPressed
  });

  final VoidCallback onSearchPressed;
  final VoidCallback onCreateRecordPressed;

  @override
  Widget build(BuildContext context) {
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

          const SizedBox(height: 35),

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
        ]
      )
    );
  }
}