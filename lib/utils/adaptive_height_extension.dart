import 'package:flutter_screenutil/flutter_screenutil.dart';

extension AdaptiveSize on double {
  double get h => ScreenUtil().setHeight(this);
  double get w => ScreenUtil().setWidth(this);
}
