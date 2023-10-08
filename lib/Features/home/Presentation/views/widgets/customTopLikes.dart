import 'package:flutter/material.dart';
import '../../../../../core/styles.dart';

// ignore: must_be_immutable, camel_case_types
class customTopLikes extends StatefulWidget{
  String txt;

  customTopLikes.name(this.txt, {super.key});

  @override
  State<customTopLikes> createState() => _customTopLikesState();
}

// ignore: camel_case_types
class _customTopLikesState extends State<customTopLikes> {

  String imageUrl ='assets/like.png';
  // Initial image
  void changeImage() {
    setState(() {
      // Change the image URL
      imageUrl ='assets/Like_Filled.png';
    });
  }
  bool isLiked = false;
  void _toggleLike() {
    setState(() {
      isLiked = !isLiked;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(widget.txt,
          style: Styles.textStyleNormal,),
        InkWell(
          onTap: (){
            _toggleLike();
          },
          child: Icon(
            isLiked ? Icons.favorite : Icons.favorite_border,
            color: isLiked ? Colors.red : null,size: 30,
          ), //child: ,
        ),
      ],
    );
  }
}



