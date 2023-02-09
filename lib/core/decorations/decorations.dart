import 'package:clap/app_exports.dart';

// Widget loadingAnimation({double? size, double? width, Color? color}) {
//   return Center(
//     child: LoadingAnimationWidget.hexagonDots(
//       color: AppTheme.primaryColor,
//       size: size ?? 25.h,
//     ),
//   );
// }

// Widget buttonAnimatedLoading() {
//   return SizedBox(
//     height: 13.h,
//     width: 13.h,
//     child: loadingAnimation(color: Colors.white),
//   );
// }

// BoxDecoration cardBoxDecoration = BoxDecoration(
//   color: Colors.white,
//   border: Border.all(color: Colors.grey, width: 0.05),
//   borderRadius: BorderRadius.circular(10),
//   boxShadow: const [
//     BoxShadow(blurRadius: 0.5, color: Colors.black12, spreadRadius: 0.5),
//   ],
// );

// const Divider lightDivider = Divider(color: Colors.grey, thickness: 0.2);

// const Divider darkDivider = Divider(color: Colors.grey, thickness: 1);

// const Divider drawerDivider = Divider(color: AppTheme.appText, thickness: 0.2, height: 1);

Widget loadingSpinner({double? height, double? width, Color? color}) {
  return Center(
    child: SizedBox(
      height: height ?? 20.h,
      width: width ?? 20.h,
      child: Center(
        child: CircularProgressIndicator(
          color: color ?? AppTheme.primaryColor,
        ),
      ),
    ),
  );
}

// Widget cachedImage(image, {Color? spinnerColor, ColorFilter? colorFilter, BoxFit? fit}) {
//   return CachedNetworkImage(
//     imageUrl: image,
//     imageBuilder: (context, imageProvider) => Container(
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           image: imageProvider,
//           fit: fit ?? BoxFit.cover,
//           colorFilter: colorFilter,
//         ),
//       ),
//     ),
//     placeholder: (context, url) => loadingSpinner(
//       color: spinnerColor ?? AppTheme.primaryColor,
//     ),
//     errorWidget: (context, url, error) => Center(
//       child: Icon(Icons.error, color: Colors.red, size: 17.sp),
//     ),
//   );
// }
