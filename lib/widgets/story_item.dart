import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  const StoryItem({
    Key? key,
    required this.title,
    required this.urlImage,
  }) : super(key: key);

  final String title;
  final String urlImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey.shade300,
                ),
              ),
              Container(
                height: 77,
                width: 77,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey.shade300,
                  border: Border.all(color: Colors.white, width: 5),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      urlImage,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Text(
            title,
          ),
        ],
      ),
    );
  }
}
