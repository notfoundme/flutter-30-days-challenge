import 'package:bloc_example/model/news_model.dart';
import 'package:flutter/material.dart';

class NewsDetailScreen extends StatelessWidget {
  final NewsModel newsModel;
  const NewsDetailScreen({super.key, required this.newsModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.white,),
        backgroundColor: Colors.blue,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            newsModel.title,
            style: TextStyle(color: Colors.white, fontSize: 22),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              shadowColor: Colors.red,
              child: Container(
                padding: const EdgeInsets.only(right: 16),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Image.network(
                          newsModel.image,
                          fit: BoxFit.cover,
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      newsModel.content,
                      // maxLines: 2,
                      // overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          color: Colors.black,
                          // fontWeight: FontWeight.w600,
                          fontFamily: 'poppins',
                          fontSize: 20),
                          textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
