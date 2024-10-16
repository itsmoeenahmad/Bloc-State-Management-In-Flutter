



import 'package:image_picker/image_picker.dart';

Future<XFile?> CaptureImageFromCameraMethod() async
{
  final XFile? file = await ImagePicker().pickImage(source: ImageSource.camera);
  return file;
}