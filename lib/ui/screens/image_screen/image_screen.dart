import 'package:flutter/material.dart';
import 'package:growmore/infrastructure/commans/color_constants.dart';
import 'package:growmore/ui/commans/text/headline_text.dart';
import 'package:photo_view/photo_view.dart';


class ImageScreen extends StatelessWidget {

  final String image;
  final int pos;

  const ImageScreen({Key key,@required this.image, this.pos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.white,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: ColorConstants.white,
        centerTitle: true,
        title: HeadlineText(
          text: "Photo",
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
      body: Hero(
        tag: "gallery$pos",
        child: PhotoView(
          backgroundDecoration: BoxDecoration(
            color: ColorConstants.white
          ),
          imageProvider: NetworkImage(image),
        ),
      ),
    );
  }
}
