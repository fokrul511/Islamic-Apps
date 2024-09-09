import 'package:flutter/material.dart';
import 'package:untitled/presentation/utility/assets_path.dart';

class FrameImage extends StatelessWidget {
  const FrameImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(AssetsPath.frameImage);
  }
}


