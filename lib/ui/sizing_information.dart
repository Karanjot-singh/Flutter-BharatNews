import 'package:BharatNews/enums/device_screen_type.dart';
import 'package:flutter/widgets.dart';

// ignore: camel_case_types
class sizingInformation {
  final Orientation orientation;
  final DeviceScreenType deviceScreenType;
  final Size screenSize;
  final Size localWidgetSize;
  sizingInformation({
    this.deviceScreenType,
    this.localWidgetSize,
    this.screenSize,
    this.orientation,
  });
  @override
  String toString() {
    return 'Orientation:$orientation DeviceType:$deviceScreenType screenSize:$screenSize localWidgetSize:$localWidgetSize ';
  }
}
