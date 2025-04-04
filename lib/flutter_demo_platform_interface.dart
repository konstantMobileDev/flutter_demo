import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_demo_method_channel.dart';

abstract class FlutterDemoPlatform extends PlatformInterface {
  /// Constructs a FlutterDemoPlatform.
  FlutterDemoPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterDemoPlatform _instance = MethodChannelFlutterDemo();

  /// The default instance of [FlutterDemoPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterDemo].
  static FlutterDemoPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterDemoPlatform] when
  /// they register themselves.
  static set instance(FlutterDemoPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
