import 'package:avatar_view/avatar_view.dart';
import 'package:flutter/material.dart';

class RectanguloAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Rectangular'),
      ),
      body: Center(
        child: Container(
          child: AvatarView(
            radius: 60,
            borderColor: Colors.grey,
            avatarType: AvatarType.RECTANGLE,
            backgroundColor: Colors.red,
            imagePath:
                "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=pexels-pixabay-220453.jpg",
            placeHolder: Container(
              child: Icon(
                Icons.person,
                size: 50,
              ),
            ),
            errorWidget: Container(
              child: Icon(
                Icons.error,
                size: 50,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
