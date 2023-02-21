import 'package:clap/app_exports.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatefulWidget {
  final String? hint;
  final TextEditingController? controller;
  final Color? fillColor;
  final Color? textColor;
  final double? textSize, hintSize;
  final Color? border, focusedBorder;
  final double? borderRadius;
  final bool obscure;
  final TextInputAction? action;
  final Function(String)? submit;
  final String? errorText;
  final Iterable<String>? autofillHints;
  final Color? obscureColor;
  final double? vPadding, hPadding;
  final double? borderWidth;
  final TextInputType? keyboardType;
  final int? lines, textLimit;
  final Widget? prefixIcon;
  final VoidCallback? prefixTap;
  final Function(String?)? onSaved;
  final bool enabled;

  const CustomTextField({
    Key? key,
    required this.hint,
    this.controller,
    this.enabled = true,
    this.fillColor,
    this.textColor,
    this.textSize,
    this.obscureColor,
    this.border,
    this.obscure = false,
    this.action,
    this.submit,
    this.errorText,
    this.autofillHints,
    this.borderWidth,
    this.keyboardType,
    this.vPadding,
    this.lines,
    this.hintSize,
    this.borderRadius,
    this.prefixIcon,
    this.prefixTap,
    this.hPadding,
    this.textLimit,
    this.focusedBorder,
    this.onSaved,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool removeObscure = false;

  @override
  void initState() {
    super.initState();
    removeObscure = widget.obscure;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        inputFormatters: [LengthLimitingTextInputFormatter(widget.textLimit)],
        controller: widget.controller,
        enabled: widget.enabled,
        autofillHints: widget.autofillHints,
        style: Theme.of(context).inputDecorationTheme.labelStyle?.copyWith(
              color: widget.textColor ?? AppTheme.appText,
              fontSize: widget.textSize ?? 15.sp,
              fontWeight: FontWeight.w600,
            ),
        obscureText: removeObscure,
        textInputAction: widget.action ?? TextInputAction.next,
        onFieldSubmitted: widget.submit ?? (_) => FocusScope.of(context).nextFocus(),
        keyboardType: widget.keyboardType ?? TextInputType.text,
        maxLines: widget.lines ?? 1,
        decoration: InputDecoration(
          hintText: widget.hint,
          hintStyle: Theme.of(context).inputDecorationTheme.hintStyle?.copyWith(
                color: widget.textColor ?? AppTheme.appTextLight,
                fontSize: widget.textSize ?? 15.sp,
              ),
          contentPadding: EdgeInsets.symmetric(
            vertical: widget.vPadding ?? 17.h,
            horizontal: widget.hPadding ?? 10.w,
          ),
          fillColor: widget.fillColor ?? Colors.white,
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: widget.border ?? const Color.fromARGB(255, 145, 156, 167),
              width: widget.borderWidth ?? 1,
            ),
            borderRadius: BorderRadius.circular(widget.borderRadius ?? 10),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: widget.border ?? Colors.white,
              width: widget.borderWidth ?? 0.5,
            ),
            borderRadius: BorderRadius.circular(widget.borderRadius ?? 10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: widget.focusedBorder ?? AppTheme.primaryColor,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(widget.borderRadius ?? 10),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: widget.border ?? const Color.fromARGB(255, 145, 156, 167),
              width: widget.borderWidth ?? 1,
            ),
            borderRadius: BorderRadius.circular(widget.borderRadius ?? 10),
          ),
          errorMaxLines: 1,
          errorStyle: const TextStyle(fontSize: 0),
          suffixIcon: widget.obscure
              ? Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: InkWell(
                    child: Icon(
                      removeObscure ? LineIcons.eyeSlashAlt : LineIcons.eyeAlt,
                      color: widget.obscureColor ?? AppTheme.appText,
                    ),
                    onTap: () => setState(() => removeObscure = !removeObscure),
                  ),
                )
              : null,
          prefixIcon: widget.prefixIcon != null
              ? Padding(
                  padding: const EdgeInsets.only(right: 15, left: 15),
                  child: InkWell(
                    onTap: widget.prefixTap,
                    child: widget.prefixIcon,
                  ),
                )
              : null,
        ),
        validator: (String? value) {
          if (value!.isEmpty) {
            return '';
          }

          return null;
        },
        onSaved: widget.onSaved,
      ),
    );
  }
}
