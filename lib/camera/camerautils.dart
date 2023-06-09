import 'package:camera/camera.dart';

double getAspectRatio(CameraController controller) {
  final size = controller.value.previewSize;
  if (size != null) {
    return size.width / size.height;
  } else {
    return 0;
  }
}

