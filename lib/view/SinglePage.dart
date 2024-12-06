import 'package:flutter/material.dart';
import '../Component/format_func.dart';
import '../component/IconBorderRadius.dart';
import '../component/SettingsButton.dart';
import '../constants/colors_text_theme.dart';
import '../constants/dimensions.dart';

class SinglePage extends StatelessWidget {
  final dynamic itemData;

  const SinglePage({super.key,required this.itemData});
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    const double padding = 25;
    const sidePadding = EdgeInsets.symmetric(horizontal: padding);
    return SafeArea(
      child: Scaffold(
        backgroundColor: colorWhite,
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Image.asset(itemData["image"]),
                        Positioned(
                          width: size.width,
                          top: padding,
                          child: Padding(
                            padding: sidePadding,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: (){
                                    Navigator.pop(context);
                                  },
                                  child: const IconBorderRadius(
                                    height: 50,
                                    width: 50,
                                    child: Icon(Icons.keyboard_backspace,color: colorBlack,),
                                  ),
                                ),
                                const IconBorderRadius(
                                  height: 50,
                                  width: 50,
                                  child: Icon(Icons.favorite_border,color: colorBlack,),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    addVerticalSpace(padding),
                    Padding(
                      padding: sidePadding,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(formatCurrency(itemData["amount"]),style: themeData.textTheme.displayLarge,),
                              addVerticalSpace(5),
                              Text("\$${itemData["address"]}",style: themeData.textTheme.titleSmall,),
                            ],
                          ),
                          IconBorderRadius(padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 15),child: Text("20 Hours ago",style: themeData.textTheme.headlineSmall,),)
                        ],
                      ),
                    ),
                    addVerticalSpace(padding),
                    Padding(
                      padding: sidePadding,
                      child: Text("House Information",style: themeData.textTheme.headlineMedium,),
                    ),
                    addVerticalSpace(padding),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      child: Row(
                        children: [
                          InformationTile(content: "${itemData["area"]}",name: "Square Foot",),
                          InformationTile(content: "${itemData["bedrooms"]}",name: "Bedrooms",),
                          InformationTile(content: "${itemData["bathrooms"]}",name: "Bathrooms",),
                          InformationTile(content: "${itemData["garage"]}",name: "Garage",)
                        ],
                      ),
                    ),
                    addVerticalSpace(padding),
                    Padding(
                      padding: sidePadding,
                      child: Text(itemData["description"]
                        ,textAlign: TextAlign.justify,style: themeData.textTheme.bodyMedium,),
                    ),
                    addVerticalSpace(100),
                  ],
                ),
              ),
              Positioned(
                bottom: 20,
                width: size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SettingsButton(text: "Message",icon: Icons.message,width: size.width*0.35,),
                    addHorizontalSpace(10),
                    SettingsButton(text: "Call",icon: Icons.call,width: size.width*0.35,),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class InformationTile extends StatelessWidget{

  final String content;
  final String name;

  const InformationTile({Key? key, required this.content, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final Size size = MediaQuery.of(context).size;
    final double tileSize = size.width*0.20;
    return Container(
      margin: const EdgeInsets.only(left: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconBorderRadius(
              width: tileSize,
              height: tileSize,
              child: Text(content,style: themeData.textTheme.displaySmall,)),
          addVerticalSpace(15),
          Text(name,style: themeData.textTheme.titleLarge,)
        ],
      ),
    );

  }

}
