import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Bloc Code/image_picker_bloc.dart';
import '../Bloc Code/image_picker_event.dart';
import '../Bloc Code/image_picker_state.dart';

class ImagePickerExample extends StatefulWidget {
  const ImagePickerExample({super.key});

  @override
  State<ImagePickerExample> createState() => _ImagePickerExampleState();
}

class _ImagePickerExampleState extends State<ImagePickerExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff272727),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff272727),
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios_new_sharp,
              size: 20,
              color: Colors.white,
            )),
        title: const Text(
          'ImagePicker Example',
          style: TextStyle(
              fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: BlocBuilder<ImagePickerBloc, ImagePickerState>(
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    context.read<ImagePickerBloc>().add(ImagePickFromGallery());
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    color: Colors.white,
                    child: const Center(
                      child: Text(
                        'Pick Image From Gallery',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    context.read<ImagePickerBloc>().add(ImageCaptureFromCamera());
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    color: Colors.white,
                    child: const Center(
                      child: Text(
                        'Capture Image Using Camera',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
