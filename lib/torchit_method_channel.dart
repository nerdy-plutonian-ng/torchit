import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'torchit_platform_interface.dart';

/// An implementation of [TorchitPlatform] that uses method channels.
class MethodChannelTorchit extends TorchitPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('torchit');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<void> toggleTorch(bool state) async {
    methodChannel.invokeMethod('toggle', state);
  }
}
