import 'package:flutter/material.dart';
import 'package:my_love/themes/app_theme.dart';

class CustomCard extends StatelessWidget {
  final String pathImage;
  final String textImage;
  final double heightImage;
   
  const CustomCard({Key? key, 
  required this.pathImage, 
  required this.textImage, required this.heightImage}) : 
  super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      elevation: 30,
      shadowColor: AppTheme.primary.withOpacity(0.35),
      child: Column(
        children: [
          FadeInImage( 
          image: AssetImage(pathImage),
          placeholder: const AssetImage('assets/img/jar-loading.gif'),
          width: double.infinity,
          height: heightImage,
          fit: BoxFit.cover,
          fadeInDuration: const Duration(milliseconds: 250),
          ),
          Container(
          alignment: AlignmentDirectional.centerEnd,
          padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10), //separation
          child: Text(textImage),
              )
        ],
      )
    );
  }
}