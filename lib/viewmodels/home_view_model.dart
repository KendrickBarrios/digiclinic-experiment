import 'package:flutter/material.dart';

import 'package:digiclinic_experiment/services/clinical_record_service.dart';
import 'package:digiclinic_experiment/models/clinical_record/clinical_record.dart';

class HomeViewModel extends ChangeNotifier {

  HomeViewModel(this._clinicalRecordService) {
    loadRecords();
  }

  final ClinicalRecordService _clinicalRecordService;

  List<ClinicalRecord> _records = [];
  bool _isLoading = false;
  String? _error;

  List<ClinicalRecord> get records => _records;
  bool get isLoading => _isLoading;
  String? get error => _error;

  Future<void> loadRecords() async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      _records = await _clinicalRecordService.getActiveByLastUpdated();
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrint(s.toString());
      rethrow;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}