import 'package:flutter/material.dart';

class PopUpNews extends StatefulWidget {
  // const PopUpNews({Key? key}) : super(key: key);

  final String _tag;
  final String _image;
  final String _description;
  PopUpNews(this._tag, this._image, this._description);

  @override
  State<PopUpNews> createState() => _PopUpNewsState();
}

class _PopUpNewsState extends State<PopUpNews> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Hero(
        tag: widget._tag,
        child: Padding(
          padding: EdgeInsets.fromLTRB(width*.12,height*.33,width*.12,height*.33),
            child: SizedBox(
              width: 100,
              height: 100,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        width: 2
                    )
                ),
                child: Column(
                  children: [
                    Container(
                      width: 355,
                      height: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                          color: Colors.blue,
                          image: DecorationImage(
                              image: AssetImage(widget._image),
                              fit: BoxFit.fill
                          )
                      ),
                    ),
                    Text(widget._description,
                      style: const TextStyle(
                        fontFamily: 'Oswald',
                        fontSize: 16,
                        color: Colors.black
                      ),
                      overflow: TextOverflow.clip,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
  }
}