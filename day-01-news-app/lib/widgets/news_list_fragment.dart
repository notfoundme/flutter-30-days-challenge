import 'package:bloc_example/bloc/news_bloc/news_bloc.dart';
import 'package:bloc_example/bloc/news_bloc/news_event.dart';
import 'package:bloc_example/bloc/news_bloc/news_state.dart';
import 'package:bloc_example/views/news_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsListFragment extends StatelessWidget {
  const NewsListFragment({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //searches for the related bloc in parent class recursively,.
    final NewsBloc newsBloc = BlocProvider.of<NewsBloc>(context);
    newsBloc.add(NewsFetchEvent());
    // state lai type safe banauna lai BlocBuilder ko type deko :NewsState
    return BlocBuilder<NewsBloc, NewsState>(
      bloc: newsBloc,
      builder: (context, state) {
        if (state is InitialNewsState) {
          return const Text("IDLE");
        } else if (state is LoadingNewsState) {
          return const CircularProgressIndicator();
        } else if (state is LoadedNewsState) {
          return ListView.builder(
              itemCount: state.data.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (builder) => NewsDetailScreen(
                          newsModel: state.data[index],
                        ),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      shadowColor: Colors.red,
                      child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            children: [
                              Text(
                                state.data[index].title,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'poppins',
                                    fontSize: 18),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  child: Image.network(
                                    state.data[index].image,
                                    fit: BoxFit.cover,
                                  )),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                state.data[index].content,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'poppins',
                                    fontSize: 16),
                              ),
                              const SizedBox(
                                height: 10,
                              )
                            ],
                          )),
                    ),
                  ),
                );
              });
        } else if (state is ErrorNewsState) {
          return Text(state.errorMessage);
        } else {
          return const Text("Something wrong ");
        }
      },
    );
  }
}
