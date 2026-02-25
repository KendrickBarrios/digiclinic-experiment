import 'package:flutter/foundation.dart';

import 'package:digiclinic_experiment/models/clinical_note/clinical_note.dart';
import 'package:digiclinic_experiment/models/identification_form/identification_form.dart';
import 'package:digiclinic_experiment/models/pediatric_note/pediatric_note.dart';
import 'package:digiclinic_experiment/models/progress_note/progress_note.dart';
import 'package:digiclinic_experiment/models/record_document.dart';
import 'package:digiclinic_experiment/models/user/user.dart';
import 'package:digiclinic_experiment/services/clinical_note_service.dart';
import 'package:digiclinic_experiment/services/identification_form_service.dart';
import 'package:digiclinic_experiment/services/pediatric_note_service.dart';
import 'package:digiclinic_experiment/services/progress_note_service.dart';
import 'package:digiclinic_experiment/services/user_service.dart';

class RecordViewModel extends ChangeNotifier {

  RecordViewModel({
    required this.identificationFormService,
    required this.clinicalNoteService,
    required this.pediatricNoteService,
    required this.progressNoteService,
    required this.userService
  });

  final IdentificationFormService identificationFormService;
  final ClinicalNoteService clinicalNoteService;
  final PediatricNoteService pediatricNoteService;
  final ProgressNoteService progressNoteService;
  final UserService userService;

  bool _isLoading = false;
  String? _error;

  bool get isLoading => _isLoading; 
  String? get error => _error;

  List<RecordDocument> _documents = [];
  List<RecordDocument> get documents => _documents;

  User? _user;
  User? get user => _user;

  Future<void> load(int recordId, int userId) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      final identificationFuture = identificationFormService.getActiveByRecordId(recordId, size: 2);
      final clinicalFuture = clinicalNoteService.getActiveByRecordId(recordId, size: 2);
      final pediatricFuture = pediatricNoteService.getActiveByRecordId(recordId, size: 2);
      final progressFuture = progressNoteService.getActiveByRecordId(recordId, size: 2);
      final userFuture = userService.getById(userId);

      final results = await Future.wait([
        identificationFuture,
        clinicalFuture,
        pediatricFuture,
        progressFuture,
        userFuture
      ]);

      final identificationForms = results[0] as List<IdentificationForm>;
      final clinicalNotes = results[1] as List<ClinicalNote>;
      final pediatricNotes = results[2] as List<PediatricNote>;
      final progressNotes = results[3] as List<ProgressNote>;
      final fetchedUser = results[4] as User?;

      final combined = <RecordDocument>[
        ...identificationForms,
        ...clinicalNotes,
        ...pediatricNotes,
        ...progressNotes
      ];

      combined.sort((a, b) {
        final aDate = a.lastUpdated;
        final bDate = b.lastUpdated;

        if (aDate == null && bDate == null) return 0;
        if (aDate == null) return 1;
        if (bDate == null) return -1;

        return bDate.compareTo(aDate);
      });

      _documents = combined;
      _user = fetchedUser;
    } catch (e, stack) {
      _error = e.toString();
      debugPrint('ERROR EN LOAD: $e');
      debugPrintStack(stackTrace: stack);
      _error = e.toString();
    }

    _isLoading = false;
    notifyListeners();
  }
}