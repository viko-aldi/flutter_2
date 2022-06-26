import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_1/ui/pages/menu_page1/movie.dart';
import 'package:flutter_1/ui/pages/menu_page1/movie_repository.dart';
import 'package:flutter_1/ui/pages/menu_page1/widgets/loading_view.dart';
import 'package:flutter_1/ui/pages/menu_page1/widgets/movie_view.dart';

class ListFilm extends StatefulWidget {
  @override
  _ListFilmState createState() => _ListFilmState();
}

class _ListFilmState extends State<ListFilm> {
  List<Movie> list_movie = [];
  bool isNoLoadMore = false;
  int page = 1;
  bool isLoading = true;

  void callAPI() {
    isLoading = true;
    MovieRepository().getMovie(page).then((List<Movie> value) {
      isLoading = false;
      if (value.isEmpty) {
        isNoLoadMore = true;
      }
      list_movie = [...list_movie, ...value];
      setState(() {});
    }).catchError((err, track) {
      print("Something wrong ${err} ${track}");
    });
  }

  @override
  void initState() {
    callAPI();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Film"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: list_movie.isEmpty
            ? LoadingView()
            : NotificationListener<ScrollNotification>(
                onNotification: (ScrollNotification scrollNotification) {
                  if (scrollNotification.metrics.pixels ==
                      scrollNotification.metrics.maxScrollExtent) {
                    if (isNoLoadMore == false) {
                      if (isLoading == false) {
                        page = page + 1;
                        callAPI();
                      }
                    }
                  }
                  return true;
                },
                child: ListView.builder(
                    itemCount: isNoLoadMore == true
                        ? list_movie.length
                        : list_movie.length + 1,
                    itemBuilder: (BuildContext context, int index) {
                      if (index < list_movie.length) {
                        return MovieView(movie: list_movie[index]);
                      } else {
                        return LoadingView();
                      }
                    }),
              ),
      ),
    );
  }
}
