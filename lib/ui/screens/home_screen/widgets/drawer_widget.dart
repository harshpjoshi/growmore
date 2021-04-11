import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:growmore/infrastructure/commans/color_constants.dart';
import 'package:growmore/ui/commans/dialogs/inquirey_now_dialog.dart';
import 'package:growmore/ui/commans/text/headline_text.dart';
import 'package:growmore/ui/screens/gallery_screen/gallery_screen.dart';
import 'package:growmore/ui/screens/webview_screen/webview_screen.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: Drawer(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: ListView(
            shrinkWrap: true,
            children: [
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.symmetric(vertical: 30),
                child: HeadlineText(
                  text: "Hello, Demo",
                  fontWeight: FontWeight.w600,
                  color: ColorConstants.accentColor,
                  textAlign: TextAlign.center,
                  fontSize: 18,
                ),
              ),
              Divider(),
              Container(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  children: [
                    Icon(
                      Icons.person,
                      color: ColorConstants.accentColor,
                    ),
                    SizedBox(width: 10,),
                    HeadlineText(
                      text: "My Profile",
                      color: ColorConstants.textColor,
                      fontSize: 16,
                    )
                  ],
                ),
              ),
              Divider(),
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                  Navigator.of(context).push(
                    CupertinoPageRoute(
                      builder: (_) => WebViewScreen(url: "https://www.growmore.ac.in/",),
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    children: [
                      Icon(
                        Icons.web,
                        color: ColorConstants.accentColor,
                      ),
                      SizedBox(width: 10,),
                      HeadlineText(
                        text: "My Official Website",
                        color: ColorConstants.textColor,
                        fontSize: 16,
                      )
                    ],
                  ),
                ),
              ),
              Divider(),
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                  Navigator.of(context).push(
                    CupertinoPageRoute(
                      builder: (_) => GalleryScreen(),
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    children: [
                      Icon(
                        Icons.image,
                        color: ColorConstants.accentColor,
                      ),
                      SizedBox(width: 10,),
                      HeadlineText(
                        text: "Gallery",
                        color: ColorConstants.textColor,
                        fontSize: 16,
                      )
                    ],
                  ),
                ),
              ),
              Divider(),
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                  inQuiryDialog(context);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    children: [
                      Icon(
                        Icons.branding_watermark_sharp,
                        color: ColorConstants.accentColor,
                      ),
                      SizedBox(width: 10,),
                      HeadlineText(
                        text: "Inquiry",
                        color: ColorConstants.textColor,
                        fontSize: 16,
                      )
                    ],
                  ),
                ),
              ),
              Divider(),
              Container(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  children: [
                    Icon(
                      Icons.branding_watermark_sharp,
                      color: ColorConstants.accentColor,
                    ),
                    SizedBox(width: 10,),
                    HeadlineText(
                      text: "Reference For",
                      color: ColorConstants.textColor,
                      fontSize: 16,
                    )
                  ],
                ),
              ),
              Divider(),
              InkWell(
                onTap: (){

                  Navigator.pop(context);
                  Navigator.of(context).push(
                    CupertinoPageRoute(
                      builder: (_) => WebViewScreen(url: "https://www.growmore.ac.in/",),
                    ),
                  );

                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    children: [
                      Icon(
                        Icons.branding_watermark_sharp,
                        color: ColorConstants.accentColor,
                      ),
                      SizedBox(width: 10,),
                      HeadlineText(
                        text: "About Us Why Grow More",
                        color: ColorConstants.textColor,
                        fontSize: 16,
                      )
                    ],
                  ),
                ),
              ),
              Divider(),
              Container(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  children: [
                    Icon(
                      Icons.person,
                      color: ColorConstants.accentColor,
                    ),
                    SizedBox(width: 10,),
                    HeadlineText(
                      text: "Contact Us",
                      color: ColorConstants.textColor,
                      fontSize: 16,
                    )
                  ],
                ),
              ),
              Divider(),
              Container(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  children: [
                    Icon(
                      Icons.logout,
                      color: ColorConstants.accentColor,
                    ),
                    SizedBox(width: 10,),
                    HeadlineText(
                      text: "Logout",
                      color: ColorConstants.textColor,
                      fontSize: 16,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
