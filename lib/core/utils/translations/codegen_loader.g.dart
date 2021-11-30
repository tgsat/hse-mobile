// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader {
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String, dynamic> en = {
    "meeting": "Meeting",
    "field_email_format": "Field Email Required",
    "hse_plan": "HSE Plan",
    "dokument_qhse": "Document QHSE",
    "communication": "Communication",
    "inspection": "Inspection",
    "audit": "Audit",
    "risk_asessment": "Risk Asessment",
    "incident": "Incident",
    "near_miss": "Near Miss",
    "hazard": "Hazard",
    "induction": "Induction",
    "fresh_eye": "Fresh Eye",
    "training": "Training",
    "work_permit": "Work Permit",
    "statistics": "Statistics",
  };
  static const Map<String, dynamic> id = {
    "meeting": "Pertemuan",
    "field_email_format": "Kolom ini harus berformat email",
    "hse_plan": "Rencana HSE",
    "dokument_qhse": "Dokumen QHSE",
    "communication": "Komunikasi",
    "inspection": "Inspeksi",
    "audit": "Audit",
    "risk_asessment": "Tugas Beresiko",
    "incident": "Kejadian",
    "near_miss": "Nyaris",
    "hazard": "Bahaya",
    "induction": "Induksi",
    "fresh_eye": "Mata Segar",
    "training ": "Pelatihan",
    "work_permit": "Izin Kerja",
    "statistics": "Statistik",
  };
  static const Map<String, Map<String, dynamic>> mapLocales = {
    "en": en,
    "id": id
  };
}
