import 'package:flutter/material.dart';

class PhotoWrapper extends StatelessWidget {
  final ImageProvider image;
  final Widget info;

  final VoidCallback? onTap;

  const PhotoWrapper({
    super.key,
    required this.image,
    required this.onTap,
    required this.info,
  });

  @override
  Widget build(BuildContext context) => Material(
        child: InkWell(
          onTap: onTap,
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: image,
                fit: BoxFit.cover,
              ),
            ),
            padding: const EdgeInsets.all(16),
            alignment: Alignment.bottomCenter,
            child: info,
          ),
        ),
      );
}
