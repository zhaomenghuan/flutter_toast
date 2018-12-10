import 'package:flutter/services.dart';
import 'package:meta/meta.dart';

class FlutterToast {
  MethodChannel _channel = const MethodChannel('AKit/flutter_toast');

  void showToast({@required String message}) {
    final Map<String, dynamic> params = <String, dynamic>{'message': message};
    _channel.invokeMethod('showToast', params);
  }
}