import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfViewer extends StatelessWidget {
  final String yolcu;
  const PdfViewer({
    Key key,
    this.yolcu,
  }) : super(key: key);
  //final String path = 'annen/b1.pdf';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(child: SfPdfViewer.asset(yolcu)));
  }
}
