import 'package:flutter_test/flutter_test.dart';
import 'package:torchit/torchit.dart';
import 'package:torchit/torchit_platform_interface.dart';
import 'package:torchit/torchit_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockTorchitPlatform
    with MockPlatformInterfaceMixin
    implements TorchitPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final TorchitPlatform initialPlatform = TorchitPlatform.instance;

  test('$MethodChannelTorchit is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelTorchit>());
  });

  test('getPlatformVersion', () async {
    Torchit torchitPlugin = Torchit();
    MockTorchitPlatform fakePlatform = MockTorchitPlatform();
    TorchitPlatform.instance = fakePlatform;

    expect(await torchitPlugin.getPlatformVersion(), '42');
  });
}
