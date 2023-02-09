import 'package:clap/app_exports.dart';

class CustomTextField extends StatefulWidget {
  final String? hint;
  final TextEditingController? controller;
  final Color? fillColor;
  final Color? textColor;
  final double? textSize;
  final Color? border;
  final bool obscure;
  final TextInputAction? action;
  final Function(String)? submit;
  final String? errorText;
  final Iterable<String>? autofillHints;

  const CustomTextField({
    Key? key,
    required this.hint,
    this.controller,
    this.fillColor,
    this.textColor,
    this.textSize,
    this.border,
    this.obscure = false,
    this.action,
    this.submit,
    this.errorText,
    this.autofillHints,
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
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: TextFormField(
        controller: widget.controller,
        autofillHints: widget.autofillHints,
        style: Theme.of(context).inputDecorationTheme.labelStyle?.copyWith(color: widget.textColor ?? AppTheme.appText),
        obscureText: removeObscure, // widget.obscure ?? false,
        textInputAction: widget.action ?? TextInputAction.next,
        onFieldSubmitted: widget.submit,
        decoration: InputDecoration(
          hintText: widget.hint,
          hintStyle: Theme.of(context).inputDecorationTheme.hintStyle?.copyWith(color: widget.textColor ?? AppTheme.appText),
          contentPadding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 15.w),
          fillColor: widget.fillColor,
          enabledBorder: Theme.of(context).inputDecorationTheme.enabledBorder?.copyWith(
                borderSide: BorderSide(color: widget.border ?? (Colors.grey[700])!, width: 1),
              ),
          focusedBorder: Theme.of(context).inputDecorationTheme.focusedBorder?.copyWith(
                borderSide: const BorderSide(color: AppTheme.primaryColor, width: 1),
              ),
          errorMaxLines: 1,
          errorStyle: const TextStyle(fontSize: 0),
          suffixIcon: widget.obscure
              ? InkWell(
                  child: const Icon(LineIcons.eye, color: AppTheme.primaryColor),
                  onTap: () => setState(() => removeObscure = !removeObscure),
                )
              : null,
        ),
        validator: (String? value) {
          if (value!.isEmpty) {
            return '';
          }

          return null;
        },
      ),
    );
  }
}
