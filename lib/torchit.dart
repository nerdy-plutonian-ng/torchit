
import 'torchit_platform_interface.dart';

class Torchit {
  Future<String?> getPlatformVersion() {
    return TorchitPlatform.instance.getPlatformVersion();
  }
}
