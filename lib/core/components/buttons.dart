import 'package:clap/app_exports.dart';

enum ButtonState { idle, loading, disabled }

class CustomButton extends StatefulWidget {
  final String? title;
  final ButtonState state;
  final Widget? leadingIcon, suffixIcon;
  final Color? color;
  final Function()? onTap;
  final bool outline;
  final Color? textColor;
  final double? width, height;
  final double? textSize;
  final FontWeight? weight;
  final Color? loaderColor;
  final Widget? child;

  const CustomButton({
    Key? key,
    this.title,
    this.state = ButtonState.idle,
    this.leadingIcon,
    this.color,
    required this.onTap,
    this.outline = false,
    this.textColor,
    this.width,
    this.textSize,
    this.height,
    this.weight,
    this.loaderColor,
    this.suffixIcon,
    this.child,
  }) : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: widget.onTap,
        child: Container(
          height: widget.height ?? 60.h,
          width: widget.width,
          decoration: BoxDecoration(
            color: widget.color ?? AppTheme.primaryColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: widget.state == ButtonState.loading
              ? Center(
                  child: Transform.scale(
                  scale: 0.6,
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(widget.loaderColor ?? Colors.white),
                  ),
                ))
              : widget.child ??
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (widget.leadingIcon != null)
                          Padding(
                            padding: EdgeInsets.only(right: AppTheme.cardPadding * 0.3),
                            child: widget.leadingIcon,
                          ),
                        NORMALTEXT(
                          text: '${widget.title}',
                          color: widget.textColor ?? Colors.white,
                          size: widget.textSize ?? 18.sp,
                          weight: widget.weight,
                        ),
                        if (widget.suffixIcon != null)
                          Padding(
                            padding: EdgeInsets.only(left: AppTheme.cardPadding * 0.3),
                            child: widget.suffixIcon,
                          ),
                      ],
                    ),
                  ),
        ),
      ),
    );
  }
}
