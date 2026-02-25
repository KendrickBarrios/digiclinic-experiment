import 'package:digiclinic_experiment/viewmodels/record_view_model.dart';
import 'package:digiclinic_experiment/widgets/hover_icon_label_button.dart';
import 'package:digiclinic_experiment/widgets/patient_badge.dart';
import 'package:digiclinic_experiment/widgets/recent_document.dart';
import 'package:digiclinic_experiment/widgets/record_detail.dart';
import 'package:flutter/material.dart';

import 'package:digiclinic_experiment/models/clinical_record/clinical_record.dart';
import 'package:digiclinic_experiment/theme/app_colors.dart';
import 'package:digiclinic_experiment/theme/app_text_styles.dart';
import 'package:provider/provider.dart';

class RecordView extends StatefulWidget {

  const RecordView({
    super.key,
    required this.record,
    required this.onReturnPressed,
    required this.onDocumentPressed
  });

  final ClinicalRecord record;
  final VoidCallback onReturnPressed;
  final void Function() onDocumentPressed;

  @override
  State<RecordView> createState() => _RecordViewState();
}

class _RecordViewState extends State<RecordView> {

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<RecordViewModel>().load(widget.record.recordId!, widget.record.userId);
    });
  }

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<RecordViewModel>();

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const SizedBox(height: 60),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),

              PatientBadge(text: widget.record.fullName),

              const SizedBox(width: 25),

              PatientBadge(text: widget.record.recordCode ?? ''),

              const Spacer()
            ],
          ),

          const SizedBox(height: 60),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(width: 75),

              Expanded(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minWidth: 695, maxWidth: 815, minHeight: 600, maxHeight: 600),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      vm.isLoading
                        ? const SizedBox(
                          width: 325,
                          height: 80,
                          child: Center(child: CircularProgressIndicator()),
                        )
                        : vm.error != null
                          ? const SizedBox(
                            width: 325,
                            height: 80,
                            child: RecordDetail(tag: 'Médico:', text: 'Error',),
                          )
                          : RecordDetail(tag: 'Médico:', text: vm.user?.username ?? '-'),
                      RecordDetail(tag: 'Creado el:', date: widget.record.createdAt),
                      RecordDetail(tag: 'Actualizado el:', date: widget.record.lastUpdated),
                      RecordDetail(tag: 'Última visita:', date: widget.record.lastVisitDate),
                      widget.record.nextAppointments.isEmpty
                        ? RecordDetail(tag: 'Próxima cita:', text: '-')
                        : RecordDetail(tag: 'Próxima cita:', date: widget.record.nextAppointments[0])
                    ],
                  ),
                ),
              ),
              
              const SizedBox(width: 20),

              Expanded(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minWidth: 695, maxWidth: 815, minHeight: 600, maxHeight: 600),
                  child: Container(
                    alignment: Alignment.topCenter,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: AppColors.midLightGrayBlue, width: 2),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(offset: Offset.fromDirection(2), blurRadius: 5),
                        // BoxShadow(offset: Offset.fromDirection(-1), blurRadius: 5)
                      ]
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 10),

                        Text(
                          'Documentos recientes',
                          style: AppTextStyles.subTitleBold,
                          textAlign: TextAlign.center
                        ),

                        Expanded(
                          child: Builder(
                            builder: (_) {
                              if (vm.isLoading) {
                                return const Center(child: CircularProgressIndicator());
                              }

                              if (vm.error != null) {
                                return const Center(
                                  child: Text(
                                    'Error al obtener documentos.',
                                    style: AppTextStyles.recordDetailValue
                                  )
                                );
                              }

                              return ListView.separated(
                                padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                                separatorBuilder: (_, _) => const SizedBox(height: 20),
                                itemCount: vm.documents.length,
                                itemBuilder: (context, index) {
                                  final document = vm.documents[index];

                                  return RecentDocument(document: document, onTap: widget.onDocumentPressed);
                                },
                              );
                            }
                          ),
                        ),

                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
              ),

              const SizedBox(width: 75),
            ],
          ),

          const SizedBox(height: 50),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(width: 75),
              
              SizedBox(
                width: 200,
                height: 100,
                child: HoverIconlabelbutton(
                  icon: Icons.chevron_left,
                  iconSize: 60,
                  label: 'Regresar',
                  onTap: widget.onReturnPressed,
                  variant: HoverButtonVariant.cancel
                )
              ),

              const Spacer(),

              SizedBox(
                width: 250,
                height: 100,
                child: HoverIconlabelbutton(
                  icon: Icons.calendar_month,
                  iconSize: 60,
                  label: 'Citas',
                  onTap: widget.onReturnPressed,
                  variant: HoverButtonVariant.tertiary
                )
              ),

              const SizedBox(width: 25),
              
              SizedBox(
                width: 250,
                height: 100,
                child: HoverIconlabelbutton(
                  icon: Icons.add,
                  iconSize: 60,
                  label: 'Crear',
                  onTap: widget.onReturnPressed,
                  variant: HoverButtonVariant.primary
                )
              ),

              const SizedBox(width: 25),
              
              SizedBox(
                width: 250,
                height: 100,
                child: HoverIconlabelbutton(
                  icon: Icons.edit,
                  iconSize: 60,
                  label: 'Editar',
                  onTap: widget.onReturnPressed,
                  variant: HoverButtonVariant.secondary
                )
              ),

              const SizedBox(width: 25),
              
              SizedBox(
                width: 250,
                height: 100,
                child: HoverIconlabelbutton(
                  icon: Icons.delete,
                  iconSize: 60,
                  label: 'Eliminar',
                  onTap: widget.onReturnPressed,
                  variant: HoverButtonVariant.alert
                )
              ),


              const SizedBox(width: 75),
            ],
          )
        ],
      )
    );
  }
}