import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class PasswordFormsModel extends StatefulWidget {
  final TextInputType textInputType;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final String? label;
  final String? errorMessage;
  final String? initialValue;
  final bool isReadOnly;
  final bool obscureText;
  final Function()? tap;
  final TextEditingController? controller;

  const PasswordFormsModel({
    super.key,
    required this.textInputType,
    required this.label,
    required this.onChanged,
    this.obscureText = true,
    required this.tap,
    this.validator,
    this.controller,
    this.errorMessage,
    this.initialValue,
    this.isReadOnly = false,
  });

  @override
  State<PasswordFormsModel> createState() => _PasswordFormsModelState();
}

class _PasswordFormsModelState extends State<PasswordFormsModel> {
  @override
  Widget build(BuildContext context) {
    return _passwordFormFieldModel(context);
  }

  Widget _passwordFormFieldModel(BuildContext context) {
    //, String Function(String?) validation,
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: TextFormField(
        keyboardType: widget.textInputType,
        obscureText: widget.obscureText,
        onChanged: widget.onChanged,
        validator: widget.validator,
        controller: widget.controller,
        initialValue: widget.initialValue,
        readOnly: widget.isReadOnly,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        expands: false,
        textInputAction: TextInputAction.done,
        textCapitalization: TextCapitalization.none,
        decoration: InputDecoration(
          labelText: widget.label,
          errorMaxLines: 2,
          errorText: widget.errorMessage,
          icon: const Icon(LineIcons.lock),
          suffix: GestureDetector(
            onTap: widget.tap,
            child: Icon(
              widget.obscureText ? LineIcons.eye : LineIcons.eyeSlash,
              size: 32.0,
              color: Colors.black,
            ),
          ),
        ),
        style: _textStyle(),
      ),
    );
  }

  TextStyle _textStyle() {
    return const TextStyle(
      fontFamily: 'WorkSansSemiBold',
      fontSize: 16.0,
      color: Colors.black,
    );
  }
}
