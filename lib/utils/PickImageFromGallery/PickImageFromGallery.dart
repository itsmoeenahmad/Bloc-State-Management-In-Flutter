


import 'package:image_picker/image_picker.dart';

Future<XFile?> pickImageFromGalleryMethod() async
{
  final XFile? file = await ImagePicker().pickImage(source: ImageSource.gallery);
  return file;
}