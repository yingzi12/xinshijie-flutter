import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:xinshijie_flutter/app/sq_color.dart';

class NovelCoverImage extends StatelessWidget {
  final String imgUrl;
  final double? width;
  final double? height;
  NovelCoverImage(this.imgUrl, {this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CachedNetworkImage(
        imageUrl: imgUrl,
        imageBuilder: (context, imageProvider) => Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.cover,
            ),
          ),
        ),
        placeholder: (context, url) => Image.asset('img/empty.png', fit: BoxFit.cover),
        errorWidget: (context, url, error) => Image.asset('img/empty.png', fit: BoxFit.cover),
        width: width,
        height: height,
        fit: BoxFit.cover,
      ),
      decoration: BoxDecoration(border: Border.all(color: SQColor.paper)),
    );
  }
}
