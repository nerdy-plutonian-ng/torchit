import 'package:torchit/torchit_method_channel.dart';

class Torchit {
  Future<String?> getPlatformVersion() {
    return MethodChannelTorchit()
        .getPlatformVersion(); //TorchitPlatform.instance.getPlatformVersion();
  }
}
