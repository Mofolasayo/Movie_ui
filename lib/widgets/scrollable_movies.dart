import 'package:flutter/material.dart';
import '../movieData.dart';

class ScrollableMovies extends StatelessWidget {
  final double height;
  final double width;
  final bool showTitle;
  final List<Movie> moviesData;

  const ScrollableMovies(
      {super.key,
      required this.height,
      required this.width,
      required this.showTitle,
      required this.moviesData});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: height,
        width: width,
        child: ListView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          children: moviesData.map((movie) {
            return Container(
              height: height,
              width: width * 0.30,
              padding: EdgeInsets.only(right: width * 0.03),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: height * 0.80,
                      width: width * 0.45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(movie.coverImage.url))),
                    ),
                    showTitle
                        ? Text(movie.title,
                            maxLines: 2,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold))
                        : Container()
                  ]),
            );
          }).toList(),
        ));
  }
}
