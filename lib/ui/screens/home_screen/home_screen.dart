import 'package:flutter/material.dart';
import 'package:growmore/infrastructure/commans/color_constants.dart';
import 'package:growmore/infrastructure/commans/image_constants.dart';
import 'package:growmore/ui/commans/buttons/primary_button.dart';
import 'package:growmore/ui/commans/dialogs/inquirey_now_dialog.dart';
import 'package:growmore/ui/commans/text/headline_text.dart';
import 'package:growmore/ui/commans/textfields/rounded_text_field.dart';
import 'package:growmore/ui/screens/home_screen/widgets/carousel_slider_widget.dart';
import 'package:growmore/ui/screens/home_screen/widgets/drawer_widget.dart';
import 'package:growmore/ui/screens/home_screen/widgets/gallery_widget.dart';

class HomeScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: ColorConstants.white,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: ColorConstants.accentColor,
          ),
          onPressed: () {
            _drawerKey.currentState.openDrawer();
          },
        ),
        centerTitle: true,
        title: Image.asset(ImageConstants.hLogo,height: 40,),
      ),
      drawer: DrawerWidget(),
      body: ListView(
        children: [CarouselSliderWidget(), GalleryWidget()],
      ),
      bottomSheet: Card(
        margin: EdgeInsets.zero,
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          height: 45,
          child: PrimaryButton(
            text: "Inquiry Now",
            onTap: () {
              inQuiryDialog(context);
            },
          ),
        ),
      ),
    );
  }
}
