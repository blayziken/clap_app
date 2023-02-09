import 'package:clap/app_exports.dart';

class BOLDTEXT extends StatelessWidget {
  final String text;
  final double? size;
  final Color? color;
  final FontWeight? weight;
  final TextAlign? align;
  final FontStyle? fontStyle;
  final int? maxLines;
  final TextOverflow? overflow;
  final double? spacing;
  const BOLDTEXT({
    Key? key,
    this.text = '',
    this.size,
    this.color,
    this.weight,
    this.align,
    this.fontStyle,
    this.maxLines,
    this.overflow,
    this.spacing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align ?? TextAlign.start,
      maxLines: maxLines,
      overflow: overflow,
      style: TextStyle(
        fontSize: size ?? 15.sp,
        color: color ?? AppTheme.appText,
        fontWeight: weight ?? FontWeight.w500,
        fontStyle: fontStyle ?? FontStyle.normal,
        letterSpacing: spacing,
        height: 0,
        fontFamily: 'Montserrat',
      ),
    );
  }
}

class NORMALTEXT extends StatelessWidget {
  final String text;
  final double? size;
  final Color? color;
  final FontWeight? weight;
  final TextAlign? align;
  final FontStyle? fontStyle;
  final int? maxLines;
  final TextOverflow? overflow;
  final double? spacing;

  const NORMALTEXT({
    Key? key,
    this.text = '',
    this.size,
    this.color,
    this.weight,
    this.align,
    this.fontStyle,
    this.maxLines,
    this.overflow,
    this.spacing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align ?? TextAlign.start,
      maxLines: maxLines,
      overflow: overflow,
      style: TextStyle(
        fontSize: size ?? 15.sp,
        color: color ?? AppTheme.appText,
        fontWeight: weight ?? FontWeight.normal,
        fontStyle: fontStyle ?? FontStyle.normal,
        letterSpacing: spacing,
        height: 0,
        fontFamily: 'Montserrat',
      ),
    );
  }
}
