import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 120,
          width: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60),
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.red,
                Colors.amber,
              ],
            ),
          ),
        ),
        Container(
          height: 110,
          width: 110,
          decoration: BoxDecoration(
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                "https://m.media-amazon.com/images/I/41jLBhDISxL._SY355_.jpg",
              ),
            ),
            border: Border.all(
              color: Colors.white,
              width: 5,
            ),
            borderRadius: BorderRadius.circular(60),
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
