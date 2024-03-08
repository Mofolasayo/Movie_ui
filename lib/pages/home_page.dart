// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import '../movieData.dart';
import '../widgets/scrollable_movies.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _deviceHeight;
  var _deviceWidth;
  var _selectedMovie;

  @override
  void initState() {
    super.initState();
    _selectedMovie = 0;
  }

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            _featuredMovie(),
            //_gradientBox(),
            _topLayer(),
          ],
        ),
      ),
    );
  }

  Widget _featuredMovie() {
    return SizedBox(
      height: _deviceHeight * 0.45,
      width: _deviceWidth,
      child: PageView(
        onPageChanged: (index) {
          setState(() {
            _selectedMovie = index;
          });
        },
        scrollDirection: Axis.horizontal,
        children: featuredMovies.map((movie) {
          return Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(movie.coverImage.url))),
          );
        }).toList(),
      ),
    );
  }

  /*Widget _gradientBox() {
    return IgnorePointer(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: _deviceHeight,
          width: _deviceWidth,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(24, 23, 23, 1),
                Colors.transparent,
              ],
              stops: [0.56, 0.1],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ),
      ),
    );
  }
*/
  Widget _topLayer() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: _deviceWidth * 0.05, vertical: _deviceHeight * 0.005),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _topBar(),
          SizedBox(height: _deviceHeight * 0.13),
          moviesInfo(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: _deviceHeight * 0.01),
            child: ScrollableMovies(
                height: _deviceHeight * 0.24,
                width: _deviceWidth,
                showTitle: true,
                moviesData: movie),
          ),
          _featuredMovieBanner(),
          SizedBox(
            height: _deviceHeight * 0.01,
          ),
          ScrollableMovies(
              height: _deviceHeight * 0.22,
              width: _deviceWidth,
              showTitle: true,
              moviesData: movies2),
        ],
      ),
    );
  }

  Widget _topBar() {
    return SizedBox(
      height: _deviceHeight * 0.13,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.menu,
            color: Colors.white,
            size: 30,
          ),
          Row(
            children: [
              const Icon(
                Icons.search,
                color: Colors.white,
                size: 30,
              ),
              SizedBox(
                width: _deviceWidth * 0.03,
              ),
              const Icon(
                Icons.notifications_none,
                color: Colors.white,
                size: 30,
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget moviesInfo() {
    return SizedBox(
      height: _deviceHeight * 0.14,
      width: _deviceWidth,
      child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              featuredMovies[_selectedMovie].title,
              maxLines: 2,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: _deviceHeight * 0.040,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: _deviceHeight * 0.01),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: featuredMovies.map((movie) {
                bool isActive = movie == featuredMovies[_selectedMovie];
                double circleRadius = _deviceHeight * 0.004;
                return Container(
                  margin: EdgeInsets.only(right: _deviceHeight * 0.015),
                  height: circleRadius * 2,
                  width: circleRadius * 2,
                  decoration: BoxDecoration(
                      color: isActive ? Colors.red : Colors.grey,
                      borderRadius: BorderRadius.circular(100)),
                );
              }).toList(),
            ),
          ]),
    );
  }

  Widget _featuredMovieBanner() {
    return Container(
      height: _deviceHeight * 0.13,
      width: _deviceWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
              "https://occ-0-5544-768.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABYV5U3QJbxyDvBGepG4ZiI4wQZYklM9ctHOj-K4LL0Jca5QWu-zMJpSGzqwW7GfdNxsSWYa49KskZWEEUFlQ6AjLd5KsR7u7KW2M7etSJfemfZSSqRpCQxDUhicHYlUfifhrZscCxZo6wUHZzGv9YoZHOSG6Bx2rFF-JPQN_MGgJrmrFs0QQfe_bnpaAu6E_ZXI2gOhm4llfWFlCR_Hl8B2g0ESQAhAkBdJ4FU5Gs53851EEt2ooAU6dqj9GRjTYUXXfXx6tiV9-cGGnCQklk43hoOEG6DD7M-5AOhu249MEhpO5VDoMDQUnhbJoqoa2S44td-GTSXZJW5ZF1_QgPNc_RMhdgHfG3gK0bAZT_WjFdIohiq0.jpg?r=4dc"),
        ),
      ),
    );
  }
}
