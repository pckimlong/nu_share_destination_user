import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class UserPhotoAvatar extends StatelessWidget {
  const UserPhotoAvatar({
    Key? key,
    this.photoUrl,
    this.radius = 68,
    this.child,
  }) : super(key: key);

  final String? photoUrl;
  final double radius;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: photoUrl != null
          ? CachedNetworkImageProvider(
              photoUrl!,
            )
          : null,
      child: photoUrl == null
          ? Icon(
              Icons.account_circle,
              size: radius + 35,
            )
          : child,
    );
  }
}
