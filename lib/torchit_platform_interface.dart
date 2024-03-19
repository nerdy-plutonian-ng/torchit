import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'torchit_method_channel.dart';

abstract class TorchitPlatform extends PlatformInterface {
  /// Constructs a TorchitPlatform.
  TorchitPlatform() : super(token: _token);

  static final Object _token = Object();

  static TorchitPlatform _instance = MethodChannelTorchit();

  /// The default instance of [TorchitPlatform] to use.
  ///
  /// Defaults to [MethodChannelTorchit].
  static TorchitPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [TorchitPlatform] when
  /// they register themselves.
  static set instance(TorchitPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<void> toggleTorch(bool state);
}
