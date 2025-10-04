import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class ImageModel {
  final String? path;
  final String? name;
  final int? size;
  final DateTime? createdAt;
  final bool isLocal;

  const ImageModel({
    this.path,
    this.name,
    this.size,
    this.createdAt,
    this.isLocal = true,
  });
}

class VyraImagePicker extends StatelessWidget {
  final List<ImageModel> images;
  final void Function(int index) addImageOnTap;
  final void Function(int index) removeImageOnTap;

  const VyraImagePicker({
    super.key,
    required this.images,
    required this.addImageOnTap,
    required this.removeImageOnTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: 120,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          if (index < images.length && images[index].path != null) {
            return imageAsset(index, context);
          } else {
            return dashedContainer(index, context);
          }
        },
      ),
    );
  }

  Padding imageAsset(int index, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: SizeConstants.s8,
        left: SizeConstants.s8,
      ),
      child: GestureDetector(
        onTap: () => images[index].path == null ? addImageOnTap(index) : () {},
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                images[index].path!,
                height: 120,
                fit: BoxFit.cover,
                width: MediaQuery.sizeOf(context).width / 3.9,
              ),
            ),
            GestureDetector(
              onTap: () => removeImageOnTap(index),
              child: Container(
                width: SizeConstants.s40,
                height: SizeConstants.s30,
                decoration: const BoxDecoration(
                  color: ColorConstants.red,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(SizeConstants.s20),
                    topLeft: Radius.circular(SizeConstants.s8),
                  ),
                ),
                child: Icon(
                  Icons.remove_rounded,
                  color: Theme.of(context).colorScheme.surface,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector dashedContainer(int index, BuildContext context) {
    return GestureDetector(
      onTap: () => addImageOnTap(index),
      child: Container(
        margin: const EdgeInsets.only(
          right: SizeConstants.s8,
          left: SizeConstants.s8,
        ),
        width: MediaQuery.sizeOf(context).width / 3.8,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(SizeConstants.s20),
          ),
          border: Border.all(
            color: Theme.of(context).colorScheme.onSurface,
            width: 2.1,
            style: BorderStyle.solid,
          ),
        ),
        child: const Icon(Icons.add_rounded, size: 35),
      ),
    );
  }
}
