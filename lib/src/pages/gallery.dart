import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../utilis/galleryUtils.dart';

class Gallery extends StatelessWidget {
  const Gallery({super.key, required this.project});
  final GalleryUtils project;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),child:
        GridView.custom(
      gridDelegate: SliverQuiltedGridDelegate(
        crossAxisCount: 4,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        repeatPattern: QuiltedGridRepeatPattern.inverted,
        pattern: [
          const QuiltedGridTile(2, 2),
          const QuiltedGridTile(1, 1),
          const QuiltedGridTile(1, 1),
          const QuiltedGridTile(1, 2),
        ],
      ),
      childrenDelegate:
          SliverChildBuilderDelegate((context, index) => Container(
                    clipBehavior: Clip.antiAlias,
                    height: 290,
                    width: 260,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent,
                        image: DecorationImage(
                            image: AssetImage(artsGalleryUtils[index].image),
                            fit: BoxFit.fill)),
                  ),childCount:artsGalleryUtils.length,
              // Tile(index: index),
              ),
    )));
  }
}
