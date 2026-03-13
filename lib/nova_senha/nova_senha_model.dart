import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'nova_senha_widget.dart' show NovaSenhaWidget;
import 'package:flutter/material.dart';

class NovaSenhaModel extends FlutterFlowModel<NovaSenhaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
