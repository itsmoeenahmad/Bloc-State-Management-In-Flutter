

import 'package:bloc/bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:learning_bloc/utils/CaptureImageFromCamera/CaptureImageFromCamera.dart';
import '../../../../utils/PickImageFromGallery/PickImageFromGallery.dart';
import 'image_picker_event.dart';
import 'image_picker_state.dart';

class ImagePickerBloc extends Bloc<ImagePickerEvent, ImagePickerState>
{

  ImagePickerBloc() : super(const ImagePickerState()){
    on<ImagePickFromGallery>(_onGallery);
    on<ImageCaptureFromCamera>(_onCamera);
  }


  _onGallery(ImagePickFromGallery event, Emitter<ImagePickerState> emit) async
  {
    final XFile? file = await pickImageFromGalleryMethod().then((success){
      print('Image Picked Successfully From Gallery');
    });
    emit(state.copyWith(file: file));
  }



  _onCamera(ImageCaptureFromCamera event, Emitter<ImagePickerState> emit)async
  {
    final XFile? file = await CaptureImageFromCameraMethod().then((success){
      print('Image Picked Successfully From Camera');
    });
    emit(state.copyWith(file: file));
  }


}