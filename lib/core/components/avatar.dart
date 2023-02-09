import 'package:clap/app_exports.dart';

CachedNetworkImage imageAvatar(
  String image, {
  double? avatarRadius,
  double? height,
  double? width,
  Color? spinnerColor = AppTheme.primaryColor,
}) {
  return CachedNetworkImage(
    imageUrl: image,
    imageBuilder: (context, imageProvider) => Container(
      height: height ?? avatarRadius,
      width: width ?? avatarRadius,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
      ),
    ),
    placeholder: (context, url) => loadingSpinner(color: spinnerColor!),
    errorWidget: (context, url, error) => Container(
      height: avatarRadius,
      width: avatarRadius,
      decoration: const BoxDecoration(shape: BoxShape.circle),
      child: Center(child: Icon(Icons.error, size: 25.sp, color: Colors.red)),
    ),
  );
}
