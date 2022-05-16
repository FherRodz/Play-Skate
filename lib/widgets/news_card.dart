import 'package:flutter/material.dart';
import 'package:play_skate/widgets/pop_up_news.dart';

import 'hero_news_route.dart';

class NewsCard extends StatelessWidget {
  // const NewsCard({Key? key}) : super(key: key);

  final String _title;
  final String _image;
  final String _tag;
  final String _description;
  NewsCard(this._title, this._image, this._tag, this._description);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Hero(
      tag: _tag,
      child: GestureDetector(
        onTap: (){
          Navigator.of(context).push(HeroNewsRoute(builder: (context) {
            return PopUpNews(_tag, _image, _description);
          }));
        },
        child: Container(
          height: height*.20,
          width: width*.80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.white
          ),
          child: Column(
            children: [
              Container(
                height: height*.13,
                width: width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                  color: Colors.blue,
                  image: DecorationImage(
                    image: AssetImage(_image),
                    fit: BoxFit.fill
                  )
                ),
              ),
              Text(_title,
                style: const TextStyle(
                  fontFamily: 'Oswald',
                  fontSize: 24,
                  color: Colors.black,
                  decoration: TextDecoration.underline
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
