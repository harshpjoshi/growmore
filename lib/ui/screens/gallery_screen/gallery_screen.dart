import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:growmore/infrastructure/commans/color_constants.dart';
import 'package:growmore/ui/commans/text/headline_text.dart';
import 'package:growmore/ui/screens/image_screen/image_screen.dart';

class GalleryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.white,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: ColorConstants.white,
        centerTitle: true,
        title: HeadlineText(
          text: "Gallery",
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: ColorConstants.textColor,
        ),
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios,color: ColorConstants.textColor,),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: GridView.builder(
        itemCount:10,
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,crossAxisSpacing: 10,mainAxisSpacing: 10),
        itemBuilder: (BuildContext context, int index) {
          return
            InkWell(
              onTap: (){
                Navigator.of(context).push(
                  CupertinoPageRoute(
                    builder: (_) =>
                        ImageScreen(image:  "https://www.growmore.ac.in/storage/images/stories/college.jpg",pos: index),
                  ),
                );
              },
              child: Hero(
                tag: "gallery$index",
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                  "https://www.growmore.ac.in/storage/images/stories/college.jpg",
                  width: 150,
                  fit: BoxFit.fill,
          ),
                ),
              ),
            );
        },
      ),
    );
  }
}
