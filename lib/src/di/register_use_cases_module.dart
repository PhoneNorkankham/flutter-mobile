part of 'di_graph_setup.dart';

void _registerUseCasesModule() {
  Get.put(GetLoggedInDataUseCase(Get.find()));
}
