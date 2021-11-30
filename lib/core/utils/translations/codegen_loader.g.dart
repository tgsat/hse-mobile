// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en = {
  "meeting": "Meeting",
  "field_email_format": "Field Email Required",
  "induction": "Induction",
  "hse_plan": "HSE Plan",
  "dokument_qhse": "HSE Document",
  "communication": "Communication",
  "inspection": "Inspection",
  "audit": "Audit",
  "risk_asessment": "Risk Assestment",
  "incident": "Insiden",
  "near_miss": "Near Miss",
  "hazard": "Bahaya",
  "fresh_eye": "Fresh Eye",
  "training": "Pelatihan",
  "work_permit": "Izin Kerja",
  "statistics": "Statistik",
  "search": "Search",
  "status": "Status",
  "title": "Title",
  "start_date": "Start Date",
  "end_date": "End Date"
};
static const Map<String,dynamic> id = {
  "meeting": "Pertemuan",
  "field_email_format": "Kolom ini harus berformat email",
  "induction": "Induksi",
  "hse_plan": "Rencana HSE",
  "dokument_qhse": "Dokumen HSE",
  "communication": "Komunikasi",
  "inspection": "Inspeksi",
  "audit": "Audit",
  "risk_asessment": "Risk Assessment",
  "incident": "Incident",
  "near_miss": "Near Miss",
  "hazard": "Hazaard",
  "fresh_eye": "Fresh Eye",
  "training": "Training",
  "work_permit": "Work Permit",
  "statistics": "Statistics",
  "search": "Cari",
  "status": "Status",
  "title": "Judul",
  "start_date": "Tanggal Mulai",
  "end_date": "Tanggal Selesai"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "id": id};
}
