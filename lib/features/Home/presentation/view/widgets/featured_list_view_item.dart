import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key, required this.urlImage});
  final String urlImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: CachedNetworkImage(
          placeholder: (context, url) => const Center(
            child: CircularProgressIndicator(),
          ),
          imageUrl: urlImage,
          errorWidget: ((context, url, error) => const Icon(Icons.error)),
        ),
      ),
    );
  }
}
