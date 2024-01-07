// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

Future exportToPdf(ProductsRow productRow) async {
  // Add your function code here!
  final pdf = pw.Document();

  pdf.addPage(pw.Page(
      build: (pw.Context context) => pw.Column(
            children: [
              pw.Text('Product'),
              pw.Divider(thickness: 2),
              pw.Text('Name : ' + productRow.title.toString()),
              pw.Text('Price : ' + productRow.price.toString()),
            ],
          )));

  await Printing.layoutPdf(
      onLayout: (PdfPageFormat format) async => pdf.save());
}
