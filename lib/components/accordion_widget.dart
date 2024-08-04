import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'accordion_model.dart';
export 'accordion_model.dart';

class AccordionWidget extends StatefulWidget {
  const AccordionWidget({
    super.key,
    required this.question,
    required this.answer,
  });

  final String? question;
  final String? answer;

  @override
  State<AccordionWidget> createState() => _AccordionWidgetState();
}

class _AccordionWidgetState extends State<AccordionWidget> {
  late AccordionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AccordionModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Text(
                      valueOrDefault<String>(
                        widget!.question,
                        '質問',
                      ),
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'Manrope',
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.normal,
                            lineHeight: 1.2,
                          ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 6.0),
                child: Text(
                  valueOrDefault<String>(
                    widget!.answer,
                    '答え',
                  ),
                  style: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Manrope',
                        fontSize: 14.0,
                        letterSpacing: 0.0,
                        lineHeight: 1.4,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
