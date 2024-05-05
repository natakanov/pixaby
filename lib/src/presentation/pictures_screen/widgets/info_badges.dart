import 'package:flutter/material.dart';

class InfoBadges extends StatelessWidget {
  final int likes;
  final int views;

  const InfoBadges({
    super.key,
    required this.likes,
    required this.views,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            const Icon(Icons.thumb_up_off_alt_outlined),
            Text('$likes'),
          ],
        ),
        Column(
          children: [
            const Icon(Icons.remove_red_eye_outlined),
            Text('$views'),
          ],
        ),
      ],
    );
  }
}
