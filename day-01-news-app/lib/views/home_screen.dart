import 'package:bloc_example/bloc/news_bloc/news_bloc.dart';
import 'package:bloc_example/bloc/news_bloc/news_state.dart';
import 'package:bloc_example/widgets/news_list_fragment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) { 
        return NewsBloc(InitialNewsState());
       },
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            "News App",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: NewsListFragment(),
      ),
    );
  }
}


