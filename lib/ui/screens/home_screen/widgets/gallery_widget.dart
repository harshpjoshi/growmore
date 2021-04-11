import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:growmore/infrastructure/commans/color_constants.dart';
import 'package:growmore/ui/commans/text/headline_text.dart';
import 'package:growmore/ui/screens/gallery_screen/gallery_screen.dart';
import 'package:growmore/ui/screens/image_screen/image_screen.dart';

class GalleryWidget extends StatelessWidget {
  final List<String> _list = [
    "https://www.growmore.ac.in/storage/images/stories/college.jpg",
    "https://www.growmore.ac.in/storage/images/stories/college.jpg",
    "https://www.growmore.ac.in/storage/images/stories/college.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HeadlineText(
                text: "Gallery",
                fontSize: 16,
                color: ColorConstants.textColor,
                fontWeight: FontWeight.w700,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(
                    CupertinoPageRoute(
                      builder: (_) => GalleryScreen(),
                    ),
                  );
                },
                child: Row(
                  children: [
                    HeadlineText(
                      text: "View All",
                      fontSize: 14,
                      color: ColorConstants.accentColor,
                      fontWeight: FontWeight.w500,
                    ),
                    Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: ColorConstants.accentColor,
                      size: 14,
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 150,
            child: ListView.separated(
              separatorBuilder: (context, pos) => SizedBox(
                width: 15,
              ),
              itemBuilder: (context, pos) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      CupertinoPageRoute(
                        builder: (_) => ImageScreen(image: _list[pos],pos: pos),
                      ),
                    );
                  },
                  child: Hero(
                    tag: "gallery$pos",
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          _list[pos],
                          width: 150,
                          fit: BoxFit.fill,
                        )),
                  ),
                );
              },
              itemCount: _list.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
            ),
          )
        ],
      ),
    );
  }
}
