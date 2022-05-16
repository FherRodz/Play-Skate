import 'package:flutter/material.dart';
import 'package:play_skate/widgets/news_card.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  final List<String> _newsList = ['Latest Video Part', 'New brand', 'Worst 10 Parks'];
  final List<String> _imageList = ['news_1.png', 'news_2.png', 'news_3.png'];
  final List<String> _descriptions = ['The latest video part from the SK8HOP crew is out today!',
  'New skateboard brand to come from Puerto Rico.',
  'Worst 10 parks from the bay area.'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(26, 23, 28, 1.0),
      body: Container(
        margin: EdgeInsets.fromLTRB(0, 40, 0, 0),  //In case you want some margin
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child: const Text('Back'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    textStyle: const TextStyle(
                        fontFamily: 'Oswald',
                        fontSize: 16
                    ),
                  ),
                ),
                Image.asset('img/Title.png'),
              ],
            ),
            const Text('SKATE NEWS',
              style: TextStyle(
                fontFamily: 'Oswald',
                fontSize: 36,
                decoration: TextDecoration.underline,
                color: Colors.red
              ),
            ),
            Container(
              height: 650,
              child: Column(
                children: [
                  Scrollbar(
                    isAlwaysShown: true,
                      child: ListView.separated(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        shrinkWrap: true,
                          itemCount: _newsList.length,
                          itemBuilder: (context, index){
                            return NewsCard(_newsList[index], 'img/${_imageList[index]}', _newsList[index], _descriptions[index]);
                          },
                        separatorBuilder: (BuildContext context, int index) => SizedBox(
                          height: 15,
                        ),
                      )
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            )
          ],
        ),
      ),
    );
  }
}
