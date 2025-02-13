import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../utilis/galleryUtils.dart';

class Gallery extends StatelessWidget {

  const Gallery({super.key, required this.project});
  final GalleryUtils project;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:GridView.custom(
        gridDelegate: SliverQuiltedGridDelegate(
          crossAxisCount: 4,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          repeatPattern: QuiltedGridRepeatPattern.inverted,
          pattern: [
            QuiltedGridTile(2, 2),
            QuiltedGridTile(1, 1),
            QuiltedGridTile(1, 1),
            QuiltedGridTile(1, 2),
          ],
        ),
        childrenDelegate: SliverChildBuilderDelegate(
              (context, index) =>
    Container(
          clipBehavior: Clip.antiAlias,
          height: 290,
          width: 260,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.red,
              image: DecorationImage(image: AssetImage(project.image),fit: BoxFit.fill)
          ),
        )
                  // Tile(index: index),
        ),
      )


      // Container(
      //       clipBehavior: Clip.antiAlias,
      //       height: 290,
      //       width: 260,
      //       decoration: BoxDecoration(
      //         borderRadius: BorderRadius.circular(10),
      //         color: Colors.red,
      //           image: DecorationImage(image: AssetImage(project.image))
      //       ),
      //     )



    );
  }
}
