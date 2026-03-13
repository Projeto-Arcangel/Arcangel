import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'cadastro_widget.dart' show CadastroWidget;
import 'package:flutter/material.dart';

class CadastroModel extends FlutterFlowModel<CadastroWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading_uploadProfilePicture = false;
  FFUploadedFile uploadedLocalFile_uploadProfilePicture =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  String? _textController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Nome is required';
    }

    if (val.length < 2) {
      return 'No minimo 2 caracteres';
    }
    if (val.length > 20) {
      return 'No máximo 20 caracteres';
    }
    if (!RegExp('').hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  String? _emailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'E-mail é nescessário';
    }

    if (val.length < 6) {
      return 'Pelo menos 6 caracteres';
    }
    if (val.length > 30) {
      return 'Máximo 30 caracteres';
    }
    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  String? _textController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Confirmar e-mail é nescessário';
    }

    if (val.length < 6) {
      return 'Pelo menos 6 caracteres';
    }
    if (val.length > 30) {
      return 'Máximo 30 caracteres';
    }
    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? passwordTextController;
  late bool passwordVisibility1;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  String? _passwordTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Senha é nescessário';
    }

    if (val.length < 6) {
      return 'Pelo menos 6 caracteres.';
    }
    if (val.length > 30) {
      return 'Máximo 30 caracteres';
    }
    if (!RegExp('^(?=.*[A-Z])\\S+\$').hasMatch(val)) {
      return 'A senha deve conter ao menos uma letra maiúscula e não pode ter espaços.';
    }
    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? confirmPasswordTextController;
  late bool passwordVisibility2;
  String? Function(BuildContext, String?)?
      confirmPasswordTextControllerValidator;
  String? _confirmPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Confirmar senha é nescessário';
    }

    if (val.length < 6) {
      return 'Pelo menos 6 caracteres.';
    }
    if (val.length > 30) {
      return 'Máximo 30 caracteres';
    }
    if (!RegExp('^(?=.*[A-Z])\\S+\$').hasMatch(val)) {
      return 'A senha deve conter ao menos uma letra maiúscula e não pode ter espaços.';
    }
    return null;
  }

  @override
  void initState(BuildContext context) {
    textController1Validator = _textController1Validator;
    emailTextControllerValidator = _emailTextControllerValidator;
    textController2Validator = _textController2Validator;
    passwordVisibility1 = false;
    passwordTextControllerValidator = _passwordTextControllerValidator;
    passwordVisibility2 = false;
    confirmPasswordTextControllerValidator =
        _confirmPasswordTextControllerValidator;
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    emailTextController?.dispose();

    textFieldFocusNode3?.dispose();
    textController2?.dispose();

    textFieldFocusNode4?.dispose();
    passwordTextController?.dispose();

    textFieldFocusNode5?.dispose();
    confirmPasswordTextController?.dispose();
  }
}
