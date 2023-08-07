import 'package:foodordaring2/core/enums/connectivity_status.dart';
import 'package:foodordaring2/core/services/base_controller.dart';
import 'package:foodordaring2/core/services/connectivity_service.dart';
import 'package:foodordaring2/ui/shared/utils.dart';

class MyAppController extends BaseController {
  ConnectivityStatus connectionStatus = ConnectivityStatus.ONLINE;

  @override
  void onInit() {
    listenToConnectionStatus();
    super.onInit();
  }

  void listenToConnectionStatus() {
    connectivityService.connectivityStatusController.stream.listen((event) {
      connectionStatus = event;
    });
  }
}
